import	React, {ReactElement}	from	'react';
import	useYearn 				from	'contexts/useYearn';

function	ImageTester({vaults}: {vaults: any[]}): ReactElement {
	const	{onUpdateIconStatus, onUpdateTokenIconStatus} = useYearn();

	return (
		<div className={'overflow-hidden invisible w-0 h-0'}>
			{(vaults || []).map((vault: any): ReactElement => {
				return (
					<div key={`image_tester-${vault.icon}_${vault.address}`}>
						<img
							onError={(): void => onUpdateIconStatus(vault.address, false)}
							src={vault.icon}
							width={40}
							height={40} />
						<img
							onError={(): void => onUpdateTokenIconStatus(vault.address, false)}
							src={vault.token.icon}
							width={40}
							height={40} />
					</div>
				);
			})}
		</div>
	);
}

export default ImageTester;