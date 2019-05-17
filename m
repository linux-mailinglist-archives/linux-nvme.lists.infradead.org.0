Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FF321BA0
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 18:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=XkwLzW+IMq+5LSEVxjlY+cTEUhfqLSfAqJ8bpnH476I=; b=QSAWX59l2PxmIR
	ql2YYxSa/KlGScUMyU66ee47f8/JtLevDlOh/hlS0GeYzMjaoyq2veqOjH2xazFi+zYFaEAIIUb1f
	f7j2L+Z3V6qJVFX/Qa7wSPyh0BK5S7Fzz0JWjAWItvaWVqk8Hx3YlxE95SEMA76YZhLRhJBSMH2zr
	2iMK3EmdMP1g20IS3SmNA2BWDU+BE8zY81sE5Ai6GRvWIBsSyMmafy/ke0/Z2CF3qKnFREU2ZFnzc
	z9HLQXW+KFlk/qP8Gic/DudMym3n1+RJ1I73c5kI6gDZZPV/0+w7igv3KgtaEV2recfMWZZTnzyLA
	dNEnlrkAkFDn5hQyjEew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfkw-0001ys-Cx; Fri, 17 May 2019 16:30:50 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfkr-0001yZ-4s
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 16:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558110645; x=1589646645;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=V7tsrLqwIQU1QlG7M2txiha2r+o5AUlVG+G3A5Z/UU4=;
 b=m3YMGP3hd/UpGYpJJPht27xEYtLhNfpr4vQPsjZpoBatgdVmvB5F7qET
 JdJywf0Sc0gzVqFgL6fmV32LF/lw9QA0CeXNuefzr/EEah/4aZC2+O42o
 iD54SGZpI8XdLGD+yNktlE4ipYKFxYCne0AjlbOUmIbuuQ2TJ3YO2ZIUk
 WTtvge0MQKq5W1M3sfh8qmctney+upPHEtl3UW9LqPpkT9Y2PrhI6QQi+
 3W7BgvtkuNJlR+osqIb39aAIsYMhsHurCZVEDj9TXZxV1kinE6qvrxYm1
 Lvymzg2Q0CJ4PU8WTTeXWjw7la6e35HeqkPMvl+Srubd6+OiEs0t1oB3J w==;
X-IronPort-AV: E=Sophos;i="5.60,480,1549900800"; d="scan'208";a="110224411"
Received: from mail-by2nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.52])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2019 00:30:44 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Zv9cVlK6Bj5IQDScVBmWCIv4YKSe1Xg1X2KHzk/l1M=;
 b=bGFADtKclBsvqh7Nqj97yPoULVydh3Pf3IfytxZtdgAM0/7GCbcuz3XzMbU5qRNiC+HIwDtOpCcLL1aKqD/CYGukca8r6RkpRuZVGQnyb+efc06is/0iXwuAFIZ1qATKrPrbSfHAfU4lFWmsXtzE3zI8MchPxdNqHjm7ePDXswU=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5312.namprd04.prod.outlook.com (20.177.255.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 16:30:42 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 16:30:42 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2 4/4] nvme: release namespace SRCU protection before
 performing controller ioctls
Thread-Topic: [PATCH v2 4/4] nvme: release namespace SRCU protection before
 performing controller ioctls
Thread-Index: AQHVDJW8+pBTa8jCT0GM2APFSv6C2g==
Date: Fri, 17 May 2019 16:30:42 +0000
Message-ID: <SN6PR04MB4527A3B33425E8E17B6C720C860B0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190517094736.14504-1-hch@lst.de>
 <20190517094736.14504-4-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:f9a6:10ea:e679:e2ee]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba43a4e9-f4f3-4e2f-945c-08d6dae501a1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5312; 
x-ms-traffictypediagnostic: SN6PR04MB5312:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5312488E340882B95115BACE860B0@SN6PR04MB5312.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:411;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(396003)(376002)(39860400002)(366004)(189003)(199004)(68736007)(476003)(4326008)(46003)(55016002)(14454004)(53936002)(9686003)(486006)(54906003)(446003)(229853002)(25786009)(6436002)(102836004)(6246003)(66946007)(66476007)(2501003)(66556008)(64756008)(66446008)(2906002)(76116006)(91956017)(73956011)(81156014)(71190400001)(7736002)(71200400001)(478600001)(72206003)(256004)(110136005)(7696005)(186003)(86362001)(76176011)(316002)(5660300002)(81166006)(33656002)(52536014)(6506007)(8936002)(6116002)(53546011)(14444005)(74316002)(8676002)(305945005)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5312;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: R2fIn4P1byZJHk9SCkscNssBcCgI/6udI6Lxk3pzpPL+4QtRrkQk8GVcN3e+dBIcUbQ355msh9LrChFebNzu1gwelzRu7xb68sNtokxD3CVfX6kbkwmnbqIDqxGjKFRNlZ6de9iQcePMgVrjbNz0PpU2eLun0B2h385l9cmMRLB+ufnpuGm1oUObHWzMzcT99+/36SIWJNUxHkLHMsgFOE9D+9dzQ5C203AswkyR/e1nqPJqbOO17BI27W22U/4TAe6leudN8W+0LExuDCRR5WvCMYFX3/NYCG05fe9CnXPiq+/4HYD3AsWC3rgS0GB2+aZj/qKqV4p/VnXI2j2pJ2DmIAUbPHknNlO9//Ta4ckWIta9vIBR5YRK17CTxjVNruwC3dAImD4DSsRHIQpfJvVOtFK79Z2Nlp4Kni/kvHw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba43a4e9-f4f3-4e2f-945c-08d6dae501a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 16:30:42.7767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_093045_228871_C3718710 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>,
 "kenneth.heitke@intel.com" <kenneth.heitke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/17/19 2:48 AM, Christoph Hellwig wrote:
> Holding the SRCU critical section protecting the namespace list can
> cause deadlocks when using the per-namespace admin passthrough ioctl to
> delete as namespace.  Release it earlier when performing per-controller
> ioctls to avoid that.
>
> Reported-by: Kenneth Heitke <kenneth.heitke@intel.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/core.c | 25 ++++++++++++++++++++-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 2d56cca1cded..6af88de83ea7 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1394,14 +1394,31 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  	if (unlikely(!ns))
>  		return -EWOULDBLOCK;
>  
> +	/*
> +	 * Handle ioctls that apply to the controller instead of the namespace
> +	 * seperately and drop the ns SRCU reference early.  This avoids a
> +	 * deadlock when deleting namespaces using the passthrough interface.
> +	 */
> +	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
> +		struct nvme_ctrl *ctrl = ns->ctrl;
> +
> +		nvme_get_ctrl(ns->ctrl);
> +		nvme_put_ns_from_disk(head, srcu_idx);
> +
> +		if (cmd == NVME_IOCTL_ADMIN_CMD)
> +			ret = nvme_user_cmd(ctrl, NULL, argp);
> +		else
> +			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
> +
> +		nvme_put_ctrl(ctrl);
> +		return ret;
> +	}
> +
>  	switch (cmd) {
>  	case NVME_IOCTL_ID:
>  		force_successful_syscall_return();
>  		ret = ns->head->ns_id;
>  		break;
> -	case NVME_IOCTL_ADMIN_CMD:
> -		ret = nvme_user_cmd(ns->ctrl, NULL, argp);
> -		break;
>  	case NVME_IOCTL_IO_CMD:
>  		ret = nvme_user_cmd(ns->ctrl, ns, argp);
>  		break;
> @@ -1411,8 +1428,6 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  	default:
>  		if (ns->ndev)
>  			ret = nvme_nvm_ioctl(ns, cmd, arg);
> -		else if (is_sed_ioctl(cmd))
> -			ret = sed_ioctl(ns->ctrl->opal_dev, cmd, argp);
>  		else
>  			ret = -ENOTTY;
>  	}



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
