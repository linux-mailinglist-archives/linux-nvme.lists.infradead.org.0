Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E63210A1
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 00:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=6SGeBbs4+sEIBQFa6aUNgko72WLqok2pz6M6DIc3zjs=; b=KBu6CNxH/Sjdnz
	H0bhIjOz27duTAF5I+4nvg99sP/iFIz0GAtkHbODWjJtcr7sdw5SYxK7F109Z640js8Br8TGE5h8Y
	GZXyyuHmmUk4YeS1OfGgjEWF2YuA5LN7gSPUZWes1BG+vfCnec7uCFPsF4vSjO3mc28HUtGA6/py6
	XhJ2Jj/nW7M/igfRczHzLSt8uGHOWLEGMJflyJq/7riEQ2jtRehI8rzPjcT4Spm326A1OexrMXi6w
	HLmrR8TVQnTR2UcCP5h7Em2YenUVm6M8oarQTWoYFsvgQ6u2abbCxzRLD9XcKWY4+fWW/aNz9Na1i
	DQlh8SBWi6sZoZ4batjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRP3g-0003fw-Fn; Thu, 16 May 2019 22:41:04 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRP3b-0003fP-9y
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 22:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558046485; x=1589582485;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=mmchce0O790akp/8gYKKQ1MgfTixluY5DUlg3+9byYI=;
 b=ZBjrsuxanE2RApWmcOUdDcbhFZgdnO0kNAsJtQtjRkNjc5Y0AEpMxrtG
 p3BFHyGgWO3VtDOlS94SDaRSD7xK1P1HKE5ozEDRxOhCcSvGyvrbZSnrN
 2avaE2ZEIpLDgS2vtlau/ua3dPMRAszZ0goa4fA/16EIRJup2NhxXepKU
 1WsqSaTLgwLLzqSuor5sROOIsx/dmNljFVRUnRsn/iMtukGaWlOfoGKkZ
 IAaGYJacTyOoqFNaoDGqzhfWOiM+uxfsB32J+oe6k5UFcVpiGNjmaKRpx
 o8JzeUpat3uLDQxQwnWmFFNT48pvhnykHE+Ucppn3dWFdYvnfGQZ+P0QA w==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="207892025"
Received: from mail-by2nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.52])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 06:41:22 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yx5oD/5m4Mu5uLtYPa8lL3ZsJoQSqnP/OPFSybWaFXc=;
 b=hut+3WYE3udnVtbxBxoCK9zjjIXxQ0Hqg2RhLwO6HvP7Q7GRBLl31BwHU02YSk2/5X1bny/NrionmKsiAJtCtCELThR609g9NJcd1azrwx0X8Rb1fFRCw5hvvonBPzju1C0C0E+jSF9kaUeK9szHwe0VOA7Q/Sb4uujrlDavilo=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB6219.namprd04.prod.outlook.com (20.178.224.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 22:40:55 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 22:40:55 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 3/4] nvme: merge nvme_ns_ioctl into nvme_ioctl
Thread-Topic: [PATCH 3/4] nvme: merge nvme_ns_ioctl into nvme_ioctl
Thread-Index: AQHVDBhsFiUNrAGhFUys5ytRzJ2TMA==
Date: Thu, 16 May 2019 22:40:55 +0000
Message-ID: <DM6PR04MB452174B7C9739F2DF0DC4AB0860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <20190516185036.17394-1-hch@lst.de>
 <20190516185036.17394-3-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef133dd7-1bff-46a2-f364-08d6da4f8f21
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB6219; 
x-ms-traffictypediagnostic: DM6PR04MB6219:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB6219FB282EFD8D90CDF9EDA3860A0@DM6PR04MB6219.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39860400002)(366004)(346002)(376002)(189003)(199004)(91956017)(66946007)(74316002)(305945005)(76116006)(7736002)(486006)(33656002)(66476007)(66446008)(186003)(6246003)(478600001)(68736007)(72206003)(4326008)(102836004)(26005)(316002)(66556008)(64756008)(73956011)(229853002)(66066001)(6436002)(81166006)(81156014)(14454004)(53936002)(25786009)(2906002)(55016002)(8676002)(5660300002)(446003)(76176011)(9686003)(3846002)(6116002)(71200400001)(476003)(7696005)(54906003)(86362001)(110136005)(8936002)(99286004)(256004)(71190400001)(52536014)(53546011)(6506007)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB6219;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TWu3jZZsl5PMc7FDoKRxoduu4gOIdIqWsG/Vod3buleKPfvH4mu/dFibj+tX3kZIAl1hZPj0IzeWQrgUJ9DMFV4JhJmo3E3VArMjZEFL/61WsIcioR1klaFgHLZ8fYN4v5kPQb0aKaK4RgUlRXh7egrhZdwpJDNFKz9lP78nc6Td2EV2+gyZhRAWreUjiShd4KyUWuh232+Cnnj6DMwFyk6IYkbi26cIBx7LVFZYtHSom4QeMlC+h/8qWufL4UiPyFhihDQV6E+C8eqAqcIn05gqjz5VXwZ0shc0qhf90qGDaZCMTIbR8wrBFH8P3J6jIe9/KYjHukTOET2JUIRiq5DLL1LpCEa9HoEIj4plgs08AQ9AIyDsO8QeZhokxEl+kb3SVad7KGthLqhJQYqvqkWFqKQc0MT8xrFaUiOxdVI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef133dd7-1bff-46a2-f364-08d6da4f8f21
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 22:40:55.7392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_154059_391197_338CB400 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>,
 "kenneth.heitke@intel.com" <kenneth.heitke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for simplifying this, looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/16/19 11:51 AM, Christoph Hellwig wrote:
> Merge the two functions to make future changes a little easier.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/core.c | 47 ++++++++++++++++++++--------------------
>  1 file changed, 24 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 7f72d57efc27..27f4e0c4be69 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1382,32 +1382,11 @@ static void nvme_put_ns_from_disk(struct nvme_ns_head *head, int idx)
>  		srcu_read_unlock(&head->srcu, idx);
>  }
>  
> -static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
> -{
> -	switch (cmd) {
> -	case NVME_IOCTL_ID:
> -		force_successful_syscall_return();
> -		return ns->head->ns_id;
> -	case NVME_IOCTL_ADMIN_CMD:
> -		return nvme_user_cmd(ns->ctrl, NULL, (void __user *)arg);
> -	case NVME_IOCTL_IO_CMD:
> -		return nvme_user_cmd(ns->ctrl, ns, (void __user *)arg);
> -	case NVME_IOCTL_SUBMIT_IO:
> -		return nvme_submit_io(ns, (void __user *)arg);
> -	default:
> -		if (ns->ndev)
> -			return nvme_nvm_ioctl(ns, cmd, arg);
> -		if (is_sed_ioctl(cmd))
> -			return sed_ioctl(ns->ctrl->opal_dev, cmd,
> -					 (void __user *) arg);
> -		return -ENOTTY;
> -	}
> -}
> -
>  static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  		unsigned int cmd, unsigned long arg)
>  {
>  	struct nvme_ns_head *head = NULL;
> +	void __user *argp = (void __user *)arg;
>  	struct nvme_ns *ns;
>  	int srcu_idx, ret;
>  
> @@ -1415,7 +1394,29 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  	if (unlikely(!ns))
>  		return -EWOULDBLOCK;
>  
> -	ret = nvme_ns_ioctl(ns, cmd, arg);
> +	switch (cmd) {
> +	case NVME_IOCTL_ID:
> +		force_successful_syscall_return();
> +		ret = ns->head->ns_id;
> +		break;
> +	case NVME_IOCTL_ADMIN_CMD:
> +		ret = nvme_user_cmd(ns->ctrl, NULL, argp);
> +		break;
> +	case NVME_IOCTL_IO_CMD:
> +		ret = nvme_user_cmd(ns->ctrl, ns, argp);
> +		break;
> +	case NVME_IOCTL_SUBMIT_IO:
> +		ret = nvme_submit_io(ns, argp);
> +		break;
> +	default:
> +		if (ns->ndev)
> +			ret = nvme_nvm_ioctl(ns, cmd, arg);
> +		else if (is_sed_ioctl(cmd))
> +			ret = sed_ioctl(ns->ctrl->opal_dev, cmd, argp);
> +		else
> +			ret = -ENOTTY;
> +	}
> +
>  	nvme_put_ns_from_disk(head, srcu_idx);
>  	return ret;
>  }



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
