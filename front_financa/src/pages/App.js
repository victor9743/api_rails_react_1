import { Card } from "../components/Card"
export const App = () => {
    return (
        <div className="container m-auto p-auto" style={{border: "1px solid red"}}>
            <div className="row d-flex justify-content-center" style={{marginTop: "80px"}}>
                <Card header={"Entrada"} bg_card={"card text-white bg-success m-3 col-3"} valor={"R$ 0,00"} />
                <Card header={"Saída"} bg_card={"card text-white bg-danger m-3 col-3"} valor={"R$ 0,00"} />
                <Card header={"Saldo"} bg_card={"card text-white bg-primary m-3 col-3"} valor={"R$ 0,00"} />
            </div>
        </div>
    )
}