Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4BD1575A
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 03:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=AvOXz6Wfeh8EJxPGoY5G5yIGXp391F0MjiAZmu4170Y=; b=F0n3Xol/xxczAl
	ilq5EEUxMcRfniolDWlRtYfTUQ7YH8I/E3NcH4B4UyIELbSVjQfdS7T2lXBYV1hgZpQGzU6sDHPJK
	N8HwjQIM34L/7RJVRbsIZpYmE5cWwNBpCvL5HyuI9BhJrA2VpvDv5sARC/BYGzPdzg6UHDy3w2dnE
	vVYztjLkiI7/m1eHd2MPXgx6+UFF01kjpMS89U1TbceFWFAf37/r0D3e2IcME/FxwPk+YosYkxLVw
	6w+idaSjb1mVkTlGIWRy/3E6bUImoumDlUMFrhsGpS7MAJzGUDsoqL8T8Rg+tFDG1ugK1AiExoV1u
	KJLiSf9ddpO6IrWbn58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNp3R-00034t-HI; Tue, 07 May 2019 01:38:01 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNp3M-00034V-At
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 01:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557193076; x=1588729076;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=yjq8ERCGLpBRiqoV7v8yAHknk+yuUGpf2u0R9Y/fhgc=;
 b=dofy5Z8AQTbzCsRpKUuLlGzekn/tJRyBmmVJrPz5vCWcDZkhQkhYTTp7
 TzUrZD8er6I7UhDWJD0/Sn3PEyOKJ/DVwzEZtYBZlx4H+y5Pt2DqfLmHv
 uzglCBHMgN5R5KA5nk16qO9PQkK2ERa9yZ5vlU8tyyMfcFuLwB9S/X4ba
 h6D9mPSawGsx0UKYHBCVU3NSJlxFCUyJPEsqcUPQ3c4JNAEU8yLBp7jLa
 HECHEniuQbOK0PhR6kVFGXp9PEpAHbAA0Miv5NHWuTrA65ysupFMwPaq8
 Cjh/TqtMfz4RUiC62GtkjtLOSYuGU0b3PwGxf6d8fV0y1fFJ/WyMUxG09 A==;
X-IronPort-AV: E=Sophos;i="5.60,440,1549900800"; d="scan'208";a="109372651"
Received: from mail-dm3nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.58])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 09:37:53 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2otzI30ohXY0p0lPD9z8cq9OCySisUw0tPr9aT4SWsA=;
 b=dV/yKd724GO+2V96s5pSQA/yGdka1D3YCVklGRIwf//1ktxBLd/Xpr/tUGFBgaXv1V0QJTm7d5qL8ZTO08zxDyR4vu2OEm6Ya2TtkhtSOIBhBa+an4rA5D8N842e2xhdtwVj0iXDMusDY58t8rph5C6HHLBrgyQ2mcywv9BC98k=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4879.namprd04.prod.outlook.com (52.135.114.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 01:37:50 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 01:37:50 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "minwoo.im@samsung.com" <minwoo.im@samsung.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
Thread-Topic: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
Thread-Index: AQHVBESL9SiFN5ZsuEC9b6iAfIF22w==
Date: Tue, 7 May 2019 01:37:50 +0000
Message-ID: <SN6PR04MB4527DB454B2CF9170B32464386310@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <SN6PR04MB4527A10184AEF3DDCC23CB0886300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-3-minwoo.im.dev@gmail.com>
 <CGME20190506223810epcas4p224242aa97518322bcbe2aa11d39d84a3@epcms2p6>
 <20190506225645epcms2p6b5efa570eade06b215b78418a0fbfdcc@epcms2p6>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [76.89.205.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4a5f058-328e-4888-df94-08d6d28c9df1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4879; 
x-ms-traffictypediagnostic: SN6PR04MB4879:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB487997BC58726C80E17C5B5186310@SN6PR04MB4879.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(376002)(346002)(39860400002)(52314003)(199004)(189003)(486006)(66066001)(14444005)(256004)(71200400001)(476003)(71190400001)(8676002)(5660300002)(8936002)(110136005)(33656002)(72206003)(81166006)(81156014)(68736007)(54906003)(99286004)(53936002)(2501003)(478600001)(7736002)(229853002)(25786009)(3846002)(6116002)(73956011)(66946007)(64756008)(66556008)(14454004)(76116006)(91956017)(66446008)(6246003)(66476007)(52536014)(4326008)(446003)(26005)(186003)(102836004)(53546011)(6506007)(76176011)(7696005)(316002)(86362001)(305945005)(55016002)(9686003)(2906002)(6436002)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4879;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yfd8QRvC2eugcmLN2rPFNDTFzMj2j2/mgcMqxDLV/osmsX21l+9HYIBsyXAyIxWFoXemlDyOyzE37ZT+88/vJWmrUFNRxsgtBAfxpX1nMEEn+f8OTNg6m99Ti6eR+0XwhIP9uRye9DPoRNdQ0rTLwO/EIauFPwTEDwpKhjEtstxxPmryqaJIM0CwFJCAPeqSASwRpPnTju2S6xuhvZHmIdA6HXAPf8kq8L2dTeD4/TFylOaMKhWEGpRfIHGhfxEZggwiMUF6iC2aNFOOOq7fWzgGkUbWJDEPhsYiPrxduh4T18gTXwqbNJLoWMgmgPkokMrFo1mj0kBIOI4S97T6XkqidzOL0BYFUAO+KD+TxvV03g3R1FEjkZhs3ChjkG2RUQbSPCkeHyGxvm3bQaAvT3My4K0RzBBh1/9ctYB8tw0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a5f058-328e-4888-df94-08d6d28c9df1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 01:37:50.5081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_183756_495618_4F4FBFCE 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/6/19 3:56 PM, Minwoo Im wrote:
>> This look okay me with some minor comments, but it does not cover the
>> target side tracing. In fact on the target side we have many components
>> such as discovery/multipath/port/async events etc.
> You're right, but this patch is just focused on nvme-host side command
> tracing.  If host-side patch is accepted, then I think I can prepare the target
> side tracing also with the experience of it.
>
> What do you say?

I really like the idea of tracing for NVMeOF. However I think we need to
design the tracing code

so that common code for host and target will get share. That is the main
reason I want both the

host and target side tracing to be done in the one patch-series. Even if
it is taking longer we are

fine with that.

So ideally patch series should look like this :-

1. NVMe-Core tracing change for fabrics commands and common code
preparation patches.

2. NVMe Host tracing changes.

3. NVMe Target Tracing changes.

I'm fine with the interchanging order of 2 & 3.

any thoughts ?

>
>>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>>> index cd16d98d1f1a..eeda3ce9afaa 100644
>>> --- a/drivers/nvme/host/core.c
>>> +++ b/drivers/nvme/host/core.c
>>> @@ -733,7 +733,12 @@ blk_status_t nvme_setup_cmd(struct nvme_ns
>> *ns, struct request *req,
>>>   	}
>>>
>>>   	cmd->common.command_id = req->tag;
>>> -	trace_nvme_setup_cmd(req, cmd);
>>> +
>>> +	if (likely(!nvme_is_fabrics(cmd)))
>> Do we really need likely here ? Isn't this branch should be guarded by
>> trace config ? what if trace is not configured ?
> The reason why I put likely here is that nvme_is_write() in linux/nvme.h
> is doing the same kind of thing because, I think, it's going to be invoked
> every simgle time in a performance critical path.

May be this makes sense because they want to improve the performance of the

write commands since write commands are slower than the read commands?

May be this is good questions for maintainers we we would know.

>
> It's also be able to be built without trace configuration.  Can I ask why
> do you concern the configuration of trace? (Actually I have build tested)

I'm not sure having additional branches for tracing is a good idea in
the kernel

where tracing is disabled, that is objective, if maintainers are okay
with that let's

keep it that way.

>
>>> +		trace_nvme_setup_cmd(req, cmd);
>>> +	else
>>> +		trace_nvme_setup_fabrics_cmd(req, cmd);
>>> +
>>>   	return ret;
>>>   }
>>>   EXPORT_SYMBOL_GPL(nvme_setup_cmd);
>>> diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
>>> index 5f24ea7a28eb..0e027a49e3a1 100644
>>> --- a/drivers/nvme/host/trace.c
>>> +++ b/drivers/nvme/host/trace.c
>>> @@ -135,6 +135,73 @@ const char *nvme_trace_parse_nvm_cmd(struct
>> trace_seq *p,
>>>   	}
>>>   }
>>>
>>> +static const char *nvme_trace_fabrics_property_set(struct trace_seq *p,
>> u8 *spc)
>>> +{
>>> +	const char *ret = trace_seq_buffer_ptr(p);
>>> +	u8 attrib = spc[0];
>>> +	u32 ofst = get_unaligned_le32(spc + 4);
>> please use name "offset" here.
> I have named these local variables to the same with names on spec.
>
>>> +TRACE_EVENT(nvme_setup_fabrics_cmd,
>>> +	    TP_PROTO(struct request *req, struct nvme_command *cmd),
>>> +	    TP_ARGS(req, cmd),
>>> +	    TP_STRUCT__entry(
>>> +		__field(int, ctrl_id)
>>> +		__field(u16, cid)
>>> +		__field(u8, fctype)
>>> +		__array(u8, spc, 24)
>> Can you please just declare a macro and replace 24 ? (I think we need to
>> replace in the nvme_setup_cmd() also, please double check.
> If we need to replace them to a macro, maybe it needs to be prepared with
> a new commit to update them.  Anyway, I think size of 24 looks readable.
> Do we really need to replace them with a macro ?

You are absolutely right. Since it is been used several places now this
is good time

to have a preparation patch, and I don't think we should delay it more.

Also for host and target NVMeOF tracing it will be useful if we
encounter same

scenario.

>
>>> +	    ),
>>> +	    TP_fast_assign(
>>> +		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
>>> +		__entry->cid = cmd->fabrics.command_id;
>>> +		__entry->fctype = cmd->fabrics.fctype;
>>> +		memcpy(__entry->spc, &cmd->fabrics.ts,
>>> +			sizeof(__entry->spc));
>>> +	    ),
>>> +	    TP_printk("nvme%d: cmdid=%u, cmd=(%s %s)",
>> Do we need to differentiate between fabrics and local NVMe ctrl when
>> reporting ?
> I think we do.  The former one shows few fields that fabrics SQE does not
> have.
>
> Thank you, Chaitanya.
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
