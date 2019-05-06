Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C351560F
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 00:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=LwqUix/Gsrs36r3aH0hyHFcBABVo9ZstfLDZ2PkD97A=; b=ouJ0YfX29/aCor
	LQgREzhuunQYOcmLTGr/P/cukR0np81XqIXeCCQYnN5cbl60BTbJ3nsTkyqmScJABY8yZRj/MOSYW
	X0dHIFPh935nJb3buKoB+smOsnMY0sjaz8M1mjBhJOHZhVVWkSdHArhUJNH8FPBLJhdOWYMLd2GoN
	ib95XMfi0WYaoe85Y2PgvI2tRtDs6a+uPK9dmAapNWrmqyr3SMBJoeiW0nBKgcd7AXtoFL7s9HsNP
	F34x8Y/bYcCMajFjIErRgq1bv4QyDL8y5JbkoA2Ug+vohQZxoGps+pUVm0FkrA23fhdgj2MnAPl4D
	+zLt07VToGe5k7pKo9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmFS-0007VB-BU; Mon, 06 May 2019 22:38:14 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmFM-0007Ur-Pv
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 22:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557182289; x=1588718289;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=KsMTuct/zI6DXPOhy6w1/Oi7n4LPiZzhBO/8UGYowk4=;
 b=Ziuw4TOK2cExK8Pbx40am1me46/7naGcJtTBKLTvqYURpjA5wYAcRhFM
 35UyqiJqN56/vum5+e4XnjWSHShN/plhrcaQod4LwsCgJSAaUA2BXVA2G
 WYG8hmCZQ77D5RelMj7bRG2KNei+m8HZKpITOC0n6wsEdaeEorcoQqpVY
 CSLJ16gybmUvUKhA01x4z9ULxV21qITJGkKMDuvfONDXPTcg4+AP0XW5E
 4+wnFj/4fuEPsfl6nIeq3ZVHlRr8Mpu/zkJKlaEHA+3vcC6DAsoES6HBm
 36NnOqynodbxHiRvlgYE5zenHoJuSJEZ7V3S6mqcUaWk5yfCcDzIfckJD w==;
X-IronPort-AV: E=Sophos;i="5.60,439,1549900800"; d="scan'208";a="108859858"
Received: from mail-by2nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.50])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 06:38:07 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=diSX6B6upHTSKmwKmoKYCvLFItjp7qei7QJo0K3lYWQ=;
 b=oNMakQLS3hvYzxs0wQzNIySRGn2zzY4Ev7j68GKb1hbMwWmDygZdKybsHpQ7BnQYbm++Yvx8iIJQ5Rm7tA0ickaD0dA3uuuyC8bfRLNC7ZiobHFIpOmBUiNCftkv538dkymoIWrVbF38FGzDIhAczknpE+YoH0hPlTYx3czZXqE=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4207.namprd04.prod.outlook.com (52.135.71.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 22:38:04 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 22:38:04 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
Thread-Topic: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
Thread-Index: AQHVBESL9SiFN5ZsuEC9b6iAfIF22w==
Date: Mon, 6 May 2019 22:38:04 +0000
Message-ID: <SN6PR04MB4527A10184AEF3DDCC23CB0886300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25c16380-6c09-4864-d48a-08d6d2738129
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4207; 
x-ms-traffictypediagnostic: SN6PR04MB4207:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB42079EC3CD77553DDF10654C86300@SN6PR04MB4207.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(54906003)(76176011)(8676002)(8936002)(110136005)(316002)(66066001)(102836004)(256004)(14444005)(186003)(86362001)(229853002)(81156014)(81166006)(53546011)(478600001)(2501003)(5660300002)(53936002)(14454004)(9686003)(6506007)(4326008)(66476007)(64756008)(55016002)(66446008)(66556008)(68736007)(76116006)(446003)(2906002)(73956011)(91956017)(476003)(6436002)(6246003)(66946007)(72206003)(486006)(305945005)(7696005)(99286004)(26005)(6116002)(71190400001)(52536014)(33656002)(7736002)(25786009)(3846002)(71200400001)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4207;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zp0hHLsDmiy5H53gMdd68CoyPVW6fNOiCfGTYz2wOcQrCVerlMAsUVorbfHP0WNODRi642BK6oEA/LflgEqhaUITcap990pV24uXcQF00SxK/FwA16XiFQHtFrEigO8fLyKlxk5ngMU+kifC6MJrzp0kxH6WmDscky7gBLFEmrsAn3Z6i+Q9c/JSUzk8cE8myXmcSwFwXtl6lEnlRrpuxEdqEuN6ECiMNi9ORZOiIE2283tODZniiszCzE881lIcDbyeiFud909mT465kYWvWJUO2vqDRVr5Jw6Zthp2eYI3fxg+bwN9vnZJcZdg8l+JBUcuY7qU+oxTtwL7LPttYXLGy0B7yN40P9AyMXJpTqFya3xj0iGSTLYRzEUdD2W/0wsSyJPhl6IiGAGim49ehw/nqxJ2w7TBZZmws1ty0AY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c16380-6c09-4864-d48a-08d6d2738129
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 22:38:04.8027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_153808_951447_2DAB8EEF 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

This look okay me with some minor comments, but it does not cover the 
target side tracing. In fact on the target side we have many components
such as discovery/multipath/port/async events etc.

On 05/06/2019 12:47 PM, Minwoo Im wrote:
> This patch supports fabrics command decoded in trace.  Fabrics commands
> are to be decoded with (opcode, fctype) pair.
>
> Now the core driver traces command in a single place of a single place
> nvme_setup_cmd() so that it might be easier if we checks whether the
> given command is for fabrics or not in that place.
>
> NVMe-oF spec 1.0a contains authentication-related commands also, but now
> we don't have any implementation for them so that we can just skip them
> in this patch.
>
> Changes to V1:
>    - fabrics commands should also be decoded, not just showing that it's
>      a fabrics command. (Christoph)
>    - do not make it within nvme admin commands (Chaitanya)
>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/core.c  |  7 +++-
>   drivers/nvme/host/trace.c | 67 +++++++++++++++++++++++++++++++++++++++
>   drivers/nvme/host/trace.h | 37 +++++++++++++++++++++
>   3 files changed, 110 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cd16d98d1f1a..eeda3ce9afaa 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -733,7 +733,12 @@ blk_status_t nvme_setup_cmd(struct nvme_ns *ns, struct request *req,
>   	}
>
>   	cmd->common.command_id = req->tag;
> -	trace_nvme_setup_cmd(req, cmd);
> +
> +	if (likely(!nvme_is_fabrics(cmd)))
Do we really need likely here ? Isn't this branch should be guarded by 
trace config ? what if trace is not configured ?
> +		trace_nvme_setup_cmd(req, cmd);
> +	else
> +		trace_nvme_setup_fabrics_cmd(req, cmd);
> +
>   	return ret;
>   }
>   EXPORT_SYMBOL_GPL(nvme_setup_cmd);
> diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
> index 5f24ea7a28eb..0e027a49e3a1 100644
> --- a/drivers/nvme/host/trace.c
> +++ b/drivers/nvme/host/trace.c
> @@ -135,6 +135,73 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
>   	}
>   }
>
> +static const char *nvme_trace_fabrics_property_set(struct trace_seq *p, u8 *spc)
> +{
> +	const char *ret = trace_seq_buffer_ptr(p);
> +	u8 attrib = spc[0];
> +	u32 ofst = get_unaligned_le32(spc + 4);
please use name "offset" here.
> +	u64 value = get_unaligned_le64(spc + 8);
> +
> +	trace_seq_printf(p, "attrib=%u, ofst=0x%x, value=0x%llx",
> +				attrib, ofst, value);
> +	trace_seq_putc(p, 0);
> +
> +	return ret;
> +}
> +
> +static const char *nvme_trace_fabrics_connect(struct trace_seq *p, u8 *spc)
> +{
> +	const char *ret = trace_seq_buffer_ptr(p);
> +	u16 recfmt = get_unaligned_le16(spc);
> +	u16 qid = get_unaligned_le16(spc + 2);
> +	u16 sqsize = get_unaligned_le16(spc + 4);
> +	u8 cattr = spc[6];
> +	u32 kato = get_unaligned_le32(spc + 8);
> +
> +	trace_seq_printf(p, "recfmt=%u, qid=%u, sqsize=%u, cattr=%u, kato=%u",
> +				recfmt, qid, sqsize, cattr, kato);
> +	trace_seq_putc(p, 0);
> +
> +	return ret;
> +}
> +
> +static const char *nvme_trace_fabrics_property_get(struct trace_seq *p, u8 *spc)
> +{
> +	const char *ret = trace_seq_buffer_ptr(p);
> +	u8 attrib = spc[0];
> +	u32 ofst = get_unaligned_le32(spc + 4);
Same here offset.
> +
> +	trace_seq_printf(p, "attrib=%u, ofst=0x%x", attrib, ofst);
> +	trace_seq_putc(p, 0);
> +
> +	return ret;
> +}
> +
> +static const char *nvme_trace_fabrics_common(struct trace_seq *p, u8 *spc)
> +{
> +	const char *ret = trace_seq_buffer_ptr(p);
> +
> +	trace_seq_printf(p, "spcecific=%*ph", 24, spc);
Please avoid magic numbers "24", see following comment.
> +	trace_seq_putc(p, 0);
> +
> +	return ret;
> +}
> +
> +const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p,
> +					 u8 fctype, u8 *spc)
> +{
> +	switch (fctype) {
> +	case nvme_fabrics_type_property_set:
> +		return nvme_trace_fabrics_property_set(p, spc);
> +	case nvme_fabrics_type_connect:
> +		return nvme_trace_fabrics_connect(p, spc);
> +	case nvme_fabrics_type_property_get:
> +		return nvme_trace_fabrics_property_get(p, spc);
> +	default:
> +		return nvme_trace_fabrics_common(p, spc);
> +	}
> +}
> +
>   const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
>   {
>   	const char *ret = trace_seq_buffer_ptr(p);
> diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
> index 97d3c77365b8..fa3a20007b56 100644
> --- a/drivers/nvme/host/trace.h
> +++ b/drivers/nvme/host/trace.h
> @@ -57,8 +57,17 @@
>   		nvme_opcode_name(nvme_cmd_resv_acquire),	\
>   		nvme_opcode_name(nvme_cmd_resv_release))
>
> +#define nvme_fabrics_type_name(type)	{ type, #type }
> +#define show_nvm_fabrics_type_name(val)					\
> +	__print_symbolic(val,						\
> +		nvme_fabrics_type_name(nvme_fabrics_type_property_set),	\
> +		nvme_fabrics_type_name(nvme_fabrics_type_connect),	\
> +		nvme_fabrics_type_name(nvme_fabrics_type_property_get))
> +
>   #define show_opcode_name(qid, opcode)					\
>   	(qid ? show_nvm_opcode_name(opcode) : show_admin_opcode_name(opcode))
> +#define show_fabric_type_name(type)					\
> +	show_nvm_fabrics_type_name(type)
>
>   const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
>   		u8 *cdw10);
> @@ -70,6 +79,12 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
>   	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) : 		\
>   	 nvme_trace_parse_admin_cmd(p, opcode, cdw10))
>
> +const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p,
> +		u8 fctype, u8 *spc);
> +
> +#define parse_nvmf_cmd(fctype, spc)				\
> +	nvme_trace_parse_fabrics_cmd(p, fctype, spc)
> +
>   const char *nvme_trace_disk_name(struct trace_seq *p, char *name);
>   #define __print_disk_name(name)				\
>   	nvme_trace_disk_name(p, name)
> @@ -118,6 +133,28 @@ TRACE_EVENT(nvme_setup_cmd,
>   		      parse_nvme_cmd(__entry->qid, __entry->opcode, __entry->cdw10))
>   );
>
> +TRACE_EVENT(nvme_setup_fabrics_cmd,
> +	    TP_PROTO(struct request *req, struct nvme_command *cmd),
> +	    TP_ARGS(req, cmd),
> +	    TP_STRUCT__entry(
> +		__field(int, ctrl_id)
> +		__field(u16, cid)
> +		__field(u8, fctype)
> +		__array(u8, spc, 24)
Can you please just declare a macro and replace 24 ? (I think we need to 
replace in the nvme_setup_cmd() also, please double check.
> +	    ),
> +	    TP_fast_assign(
> +		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
> +		__entry->cid = cmd->fabrics.command_id;
> +		__entry->fctype = cmd->fabrics.fctype;
> +		memcpy(__entry->spc, &cmd->fabrics.ts,
> +			sizeof(__entry->spc));
> +	    ),
> +	    TP_printk("nvme%d: cmdid=%u, cmd=(%s %s)",
Do we need to differentiate between fabrics and local NVMe ctrl when
reporting ?
> +		      __entry->ctrl_id, __entry->cid,
> +		      show_fabric_type_name(__entry->fctype),
> +		      parse_nvmf_cmd(__entry->fctype, __entry->spc))
> +);
> +
>   TRACE_EVENT(nvme_complete_rq,
>   	    TP_PROTO(struct request *req),
>   	    TP_ARGS(req),
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
