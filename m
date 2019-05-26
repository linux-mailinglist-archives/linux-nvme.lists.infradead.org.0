Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C119F2AB47
	for <lists+linux-nvme@lfdr.de>; Sun, 26 May 2019 18:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7VZ1gqA3apkyF6OFEkaVZawmb+HYQgMi+IunY/A18zE=; b=qXOgl22h5dEVKp
	nm+U7D6SdqQljfjXYXcg/BQDEf2tw6I/TQ+A5Y9RfwlqqMqGQvM7nF/0fRUOpLxKNEZ4mUW3HwA+6
	T8UNdQYEVaMTClASDT0+lOKa+xQ8KYJewVMUa9Iuc5wvxC6m/RrTTrnuIhJKXd8tmTv0X2wJJ1ZGD
	Y7q8k6HUo0xNb+dydws03UwYpgoQpGUswIKnrk6vihjWdxHemhluRXtVFz/+++ZtiCNUZtUbqoKKq
	L3cMWvQivj5UmOHxwWqzRL7d2gm9Zr4Mioh4NMkPkNvy9/tmwOYNhGAGTZHrYhc2Zwm9jlpN66cd7
	VeynnMPEMImUhgNaSQvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUwHM-00089p-Jy; Sun, 26 May 2019 16:45:48 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUwHH-00082x-3G
 for linux-nvme@lists.infradead.org; Sun, 26 May 2019 16:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558889142; x=1590425142;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=r7PrKTAJP0CBeIN350Jev5/QzYe5L9OobCsJehrhxRU=;
 b=K4BGs/MkkkHeGfhOeVvhL7DEL/jfX/RfH+i3WBUqWxYSSgvib3pHwsfj
 Tm7b305CrpXDH9DU7hT8HCKXPfuGbV38hWdTq0n7NXmWF5AHWpYj4nggD
 pIZzkO7lj5L+eybMUYpMRH13v3MWQAfurcEJqITsBNoyX+hsfHr3Gf/9P
 r2qORAnlq95zopFUpDfHBz4ot6SCBB4A0ZDqP1xN4rC7cJHW8mMO4VWXo
 HRSWF5715VI9BcsHElcuTg8ON1a0MdY/3n5iEB7puib/RJ4sJIGO1VkGj
 4vxYjhWN5YYACXLhE/BwRvtZeUto0AFwr/RWXjajvEa5lBIhySfGFE0fo A==;
X-IronPort-AV: E=Sophos;i="5.60,515,1549900800"; d="scan'208";a="215334042"
Received: from mail-dm3nam03lp2051.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.51])
 by ob1.hgst.iphmx.com with ESMTP; 27 May 2019 00:45:38 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9rKv6bUwySXN44uWb5hM4QaJOPg4+eOKVreyr1Na+s0=;
 b=WcVbw7xx5O1AwvQirCd/HFa57lXEMOls4IHm4HUTXQXV650jVPHYI1uC87UczhduYHVB5g+5VY0zlxfcZwWdY9yhnUxaOs9MYqyBUbGx4TdSdJ40daUtk1vhF6RQgnlESrKp8zWlxHyQW+qXAz5FMoL+9PWCyJakNhsf5t5EPHc=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4502.namprd04.prod.outlook.com (52.135.238.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Sun, 26 May 2019 16:45:36 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1922.021; Sun, 26 May 2019
 16:45:36 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: Re: [PATCH v3 1/3] nvme: Export get and set features
Thread-Topic: [PATCH v3 1/3] nvme: Export get and set features
Thread-Index: AQHVE+BH4hNGcND6B0CJO4oB0T3IRA==
Date: Sun, 26 May 2019 16:45:35 +0000
Message-ID: <BYAPR04MB57490DD9161F123005DF3457861C0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-2-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [24.19.218.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd3f4f32-93aa-4b5d-f390-08d6e1f993b3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4502; 
x-ms-traffictypediagnostic: BYAPR04MB4502:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4502E56B163A726A3A05C6D3861C0@BYAPR04MB4502.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:605;
x-forefront-prvs: 0049B3F387
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(396003)(39850400004)(136003)(346002)(199004)(189003)(86362001)(476003)(486006)(66066001)(8936002)(446003)(6116002)(53546011)(5660300002)(6506007)(81166006)(81156014)(2201001)(8676002)(102836004)(74316002)(71200400001)(71190400001)(256004)(14444005)(110136005)(33656002)(3846002)(26005)(186003)(66476007)(66946007)(73956011)(66556008)(7736002)(66446008)(55016002)(2501003)(68736007)(305945005)(6246003)(99286004)(6436002)(478600001)(76116006)(64756008)(7696005)(14454004)(52536014)(25786009)(2906002)(76176011)(316002)(72206003)(9686003)(53936002)(229853002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4502;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: INNYE5otYeUzibD155LVTXhfrDP9FuXKXZOSAet829SAZ3R1O2f+ApD8/i/81Dc1Sxm1lRLe0s9woYCYWEX5wjKqG0xnGY138ZmVZF8welzviQPs1GLW3qXdz6/K6c3ZgTW/4O5EHQDmasfhbZ0h9uN9et62snshl3WdaSoheob09o64A53w+VG8ls++rDWCM4sXaAyiRbfy7obsh78ZQNTyyUOn2Ma7e5mu37KP1i46F+upgu0NufEDlPyuOZtFxU/C5oWR3VRTr1g9DlXzzmHhW40koIw//SSr5+xL1Y0/oENCIJW8ouU2a3qFdSUr7Ejyi6/9LkQfkqgAb0h615zRtEhfAKRe5fA+Q0q1EGmDyLWeZ7TX8SwQHNNNGojl59iUNBjeWSVxJlHlYOnz86mTsSmFVB8L/zRDSNKNZKU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd3f4f32-93aa-4b5d-f390-08d6e1f993b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2019 16:45:35.8565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4502
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_094543_321669_0ED81ED3 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/26/19 9:30 AM, Akinobu Mita wrote:
> From: Keith Busch <keith.busch@intel.com>
> 
> Future use intends to make use of both, so export these functions. And
> since their implementation is identical except for the opcode, provide a
> new function that implement both.
> 
> [akinobu.mita@gmail.com>: fix line over 80 characters]
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>   drivers/nvme/host/core.c | 24 +++++++++++++++++++++---
>   drivers/nvme/host/nvme.h |  6 ++++++
>   2 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index c6a29a3..c950916 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1113,15 +1113,15 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
>   	return id;
>   }
>   
> -static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> -		      void *buffer, size_t buflen, u32 *result)
> +static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
> +		unsigned int dword11, void *buffer, size_t buflen, u32 *result)
>   {
>   	struct nvme_command c;
>   	union nvme_result res;
>   	int ret;
>   
>   	memset(&c, 0, sizeof(c));
> -	c.features.opcode = nvme_admin_set_features;
> +	c.features.opcode = op;
>   	c.features.fid = cpu_to_le32(fid);
>   	c.features.dword11 = cpu_to_le32(dword11);
>   
> @@ -1132,6 +1132,24 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>   	return ret;
>   }
>   
> +int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
> +		      unsigned int dword11, void *buffer, size_t buflen,
> +		      u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +EXPORT_SYMBOL_GPL(nvme_set_features);
> +
> +int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
> +		      unsigned int dword11, void *buffer, size_t buflen,
> +		      u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +EXPORT_SYMBOL_GPL(nvme_get_features);
> +
>   int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>   {
>   	u32 q_count = (*count - 1) | ((*count - 1) << 16);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index de624ec..802aa19 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -460,6 +460,12 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>   		union nvme_result *result, void *buffer, unsigned bufflen,
>   		unsigned timeout, int qid, int at_head,
>   		blk_mq_req_flags_t flags, bool poll);
> +int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
> +		      unsigned int dword11, void *buffer, size_t buflen,
> +		      u32 *result);
> +int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
> +		      unsigned int dword11, void *buffer, size_t buflen,
> +		      u32 *result);
>   int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
>   void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
>   int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
