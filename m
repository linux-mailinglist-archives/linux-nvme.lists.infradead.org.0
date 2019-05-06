Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578711561D
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 00:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=PnbfIBr8TghVyAzTJHpSyNT88tm1HGxjTuGjyKzkLSE=; b=Jbo5fT1Y4+SYHu
	52VcSVGIyKrHnaDGkPmhPYu4flPiMqS8XDXj0hviS6zplkLO5Fl88VxiI0belQ7byGWP3Z9VmF24H
	MFhjBDcBWDtwjvc5EbGtP5fPdpHbztoWDlGhRf2hHtR28ZSlEz20kI0ZDL56w664CqL+H0xy4y29K
	IqakSzFv6FOc11/AJOGD+3aRNtCgWn8ja9v6BBp29FNa9qyFYluBNmtw1fyXBeUwExekWy5Xv369X
	geb8EmU79M9/GZgTWZWpZ9JP+p9Un89V13XWtWkRDluiKaLSHn6ZkRmDNIUNN4wOQoLZ2UuXxQ8sR
	WYgf2svMu/eKGLOdGxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmJ6-0001Pr-7o; Mon, 06 May 2019 22:42:00 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmIz-0001PK-TJ
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 22:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557182514; x=1588718514;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Epz0nPtwriBSy5ibWA948KNjxDIJLJRHjMRIGVnZRyk=;
 b=MQQq0o56tHPkCUffp4CnIT/1RBWUMVTRW+8ou2MBmodR/VaOkseRGAD8
 Xcva8sZUmrYCVBkT5enmo2qekFTUPhyJQIK4J6sRnhDOcy0Rt9WS7gsBv
 IbR8qhPFU9mMJCEPTgZ9TT4hyKYHgtVgNT9YB8D96HE7cDvDAOTwADGLz
 EFazLyP77nfwG8XgYORGGocwO8zlnXY0YoMvcFy8ibY839lpFPd+vGY7j
 TTamxROLYoISVMIOWBL0r4e3WRqnbjbqStdsY/FbbnJsH7h3D8vlsf+TZ
 cm7TH1LCdG2SWkO+99Bk7C1q/AkvY3owdUsygc3ZXJTw8DI+vrxa+54Ji g==;
X-IronPort-AV: E=Sophos;i="5.60,439,1549900800"; d="scan'208";a="112595504"
Received: from mail-by2nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.59])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 06:41:52 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUav0i8NGBBO1ArUds04/D9bysKL61AS6DxWS8phS+o=;
 b=c/kMx47odGuhidvc5kQnpG4PEuNSYSayulZGDyZaWxHJC+UBhbilAPX1hTV2eX36cvGfAhKOzbg/TixJtuIfqF8GNSfZ+m0/woK7T6FaNkwsT5KAu/vMgBaK9borS0nIga6or6ZhkDQKe60j+DFPZ0k4c2QK8uObbnzapD+R1qQ=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4207.namprd04.prod.outlook.com (52.135.71.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 22:41:50 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 22:41:50 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme: Introduce nvme_is_fabrics to check fabrics cmd
Thread-Topic: [PATCH 1/2] nvme: Introduce nvme_is_fabrics to check fabrics cmd
Thread-Index: AQHVBESHld+8NmlPW0aVs1ZmpjuvWw==
Date: Mon, 6 May 2019 22:41:50 +0000
Message-ID: <SN6PR04MB452746C95169477C3DD9C8A786300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e445752f-e36e-452b-9149-08d6d274076d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4207; 
x-ms-traffictypediagnostic: SN6PR04MB4207:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB42078E7A6AD277904A8AF9F686300@SN6PR04MB4207.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(54906003)(76176011)(8676002)(8936002)(110136005)(316002)(66066001)(102836004)(256004)(14444005)(186003)(86362001)(229853002)(81156014)(81166006)(53546011)(478600001)(2501003)(5660300002)(53936002)(14454004)(9686003)(6506007)(4326008)(66476007)(64756008)(55016002)(66446008)(66556008)(68736007)(76116006)(446003)(2906002)(73956011)(91956017)(476003)(6436002)(6246003)(66946007)(72206003)(486006)(305945005)(7696005)(99286004)(26005)(6116002)(71190400001)(52536014)(33656002)(7736002)(25786009)(3846002)(71200400001)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4207;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WkvAoPQdlJofrJjAOnRtIpyYfKGRdcLUsEmIGgaJD05JIw5AULqxBOcn8hZC1HUuMil/bVrIFmYQDe1OCt3epocXvaHvptJGpw0Crmym1U8+BO/qR2oXEPzr7SN08mzy6aXuAytNp7orr/RB9Md9uXRKsK/Rpvb4zN+IUuD9sWDEtKdQPwOqLXgAd6TPhS6lv5LPeiqEjYymqynGaPkj83MVG3ZmDMDvVRW0T7ACE1pZebCkG97zIupyZwVCxmHnpNe/cGVdepftdsHdO/mNBAnHtTDKjqA4F4uJMWl/m3BqtDdGZAplcyAfkRgIHReAHhzdBfSDGyK5GOeV5/UPVVFRR0IqmJETMDPo1ym7RMRNfgLVIQtAOIbHXZNxltLy7d1JiLcl+Ox5Kw0NFPHtY6t4un4p4k7kducXtodmaTM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e445752f-e36e-452b-9149-08d6d274076d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 22:41:50.0242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_154153_952269_9DB00715 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I'm not sure if we need change right now, reason :-

Existing code is pretty straight forward and we are not having
any complicated logic in the helper function. I'll let the
maintainers decide this.

On 05/06/2019 12:47 PM, Minwoo Im wrote:
> This patch introduce a nvme_is_fabrics() inline function to check
> whether or not the given command structure is for fabrics.
>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: James Smart <james.smart@broadcom.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/fabrics.c       | 2 +-
>   drivers/nvme/target/core.c        | 2 +-
>   drivers/nvme/target/fabrics-cmd.c | 2 +-
>   drivers/nvme/target/fc.c          | 2 +-
>   include/linux/nvme.h              | 7 ++++++-
>   5 files changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
> index 592d1e61ef7e..931995f2dbc3 100644
> --- a/drivers/nvme/host/fabrics.c
> +++ b/drivers/nvme/host/fabrics.c
> @@ -578,7 +578,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
>   	switch (ctrl->state) {
>   	case NVME_CTRL_NEW:
>   	case NVME_CTRL_CONNECTING:
> -		if (req->cmd->common.opcode == nvme_fabrics_command &&
> +		if (nvme_is_fabrics(req->cmd) &&
>   		    req->cmd->fabrics.fctype == nvme_fabrics_type_connect)
>   			return true;
>   		break;
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 7734a6acff85..da2ea97042af 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -871,7 +871,7 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
>   		status = nvmet_parse_connect_cmd(req);
>   	else if (likely(req->sq->qid != 0))
>   		status = nvmet_parse_io_cmd(req);
> -	else if (req->cmd->common.opcode == nvme_fabrics_command)
> +	else if (nvme_is_fabrics(req->cmd))
>   		status = nvmet_parse_fabrics_cmd(req);
>   	else if (req->sq->ctrl->subsys->type == NVME_NQN_DISC)
>   		status = nvmet_parse_discovery_cmd(req);
> diff --git a/drivers/nvme/target/fabrics-cmd.c b/drivers/nvme/target/fabrics-cmd.c
> index 3b9f79aba98f..d16b55ffe79f 100644
> --- a/drivers/nvme/target/fabrics-cmd.c
> +++ b/drivers/nvme/target/fabrics-cmd.c
> @@ -268,7 +268,7 @@ u16 nvmet_parse_connect_cmd(struct nvmet_req *req)
>   {
>   	struct nvme_command *cmd = req->cmd;
>
> -	if (cmd->common.opcode != nvme_fabrics_command) {
> +	if (!nvme_is_fabrics(cmd)) {
>   		pr_err("invalid command 0x%x on unconnected queue.\n",
>   			cmd->fabrics.opcode);
>   		req->error_loc = offsetof(struct nvme_common_command, opcode);
> diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
> index 508661af0f50..a59c5a013a5c 100644
> --- a/drivers/nvme/target/fc.c
> +++ b/drivers/nvme/target/fc.c
> @@ -1806,7 +1806,7 @@ nvmet_fc_prep_fcp_rsp(struct nvmet_fc_tgtport *tgtport,
>   	 */
>   	rspcnt = atomic_inc_return(&fod->queue->zrspcnt);
>   	if (!(rspcnt % fod->queue->ersp_ratio) ||
> -	    sqe->opcode == nvme_fabrics_command ||
> +	    nvme_is_fabrics((struct nvme_command *) sqe) ||
>   	    xfr_length != fod->req.transfer_len ||
>   	    (le16_to_cpu(cqe->status) & 0xFFFE) || cqewd[0] || cqewd[1] ||
>   	    (sqe->flags & (NVME_CMD_FUSE_FIRST | NVME_CMD_FUSE_SECOND)) ||
> diff --git a/include/linux/nvme.h b/include/linux/nvme.h
> index c40720cb59ac..ab5e9392b42d 100644
> --- a/include/linux/nvme.h
> +++ b/include/linux/nvme.h
> @@ -1165,6 +1165,11 @@ struct nvme_command {
>   	};
>   };
>
> +static inline bool nvme_is_fabrics(struct nvme_command *cmd)
> +{
> +	return cmd->common.opcode == nvme_fabrics_command;
> +}
> +
>   struct nvme_error_slot {
>   	__le64		error_count;
>   	__le16		sqid;
> @@ -1186,7 +1191,7 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
>   	 *
>   	 * Why can't we simply have a Fabrics In and Fabrics out command?
>   	 */
> -	if (unlikely(cmd->common.opcode == nvme_fabrics_command))
> +	if (unlikely(nvme_is_fabrics(cmd)))
>   		return cmd->fabrics.fctype & 1;
>   	return cmd->common.opcode & 1;
>   }
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
