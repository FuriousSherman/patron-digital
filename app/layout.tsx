import './style.css';
import type { ReactNode } from 'react';
export const metadata={title:'PATRON Endurance',description:'For the Athlete.'};
export default function Layout({children}:{children:ReactNode}){return <html lang="en-AU"><body>{children}</body></html>}
