Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F0617F72
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 20:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=A2d8ejG9mPQvTdHxnLO0WmTh8TO7V5ErMfWA2UPcd2U=; b=Uscy3MViTLpRH/
	DhP+U8U6Y79mzoCycd8+5k/5QWxvUdNs9HMlB65o/iz6EKAOWfkvuHlIOheEc2mg6cg3JO7WYGwDF
	7z/zj6aUP8q8K6s86ec+z6eeIG5ZiWr8MZ3rB+2x17hu6cyyRzdwZjDXFGT0+ESypycB4fF3j96YS
	nWl+t/0v+fC6hkgrA4mz5sWdpKlficVMFaEjarlZzm/LjHBFN39AEFMwmmaC/E/SSsYkDekFRUiLL
	ON9E7dEsEugbLc72NbluhHbXkDH3l4CLh0rqlooSYYl9C9qXBMWB/niW3sWk27+zc7TzNX7M2yuD7
	sX0U5LFGxowTJ4VvkWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOQsl-00084v-EW; Wed, 08 May 2019 18:01:31 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOQsg-0007yv-9u
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 18:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557338486; x=1588874486;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=TYFf3OtJVct1cgdrKfSRsXF3JOS/fBhx3QZcShxVBuw=;
 b=C4diDRJBv3bExb1YKVDHoqDNI+u4oQXuaom/18vWcosHcRZyad7Bky53
 ADWaHqwyXvWC9rk5z37cc3oUcAnTuqY6Pax3/3bM3hToeEbWuYZ868vx/
 dfQhVU2PBxbuuVGo0tkfyL0RbgCaKX4v/C+7qwfbf9g1Ab3BL0kTTM2Rr
 4wyqjkCUDom9BmDfryYAzKapOwSnxQ1YT0LeqZmV8O9HmtWXfoxH/9sfK
 6E2663LM6rcsBUyRjA6D+tT6cvSp0DdA4eClQu7GWR7btmZPPT99yqAGc
 o2oT6mimiCr5VFr+hCK1IQzv/a+OzY+3LiZAVky7Ird+glQEyRna2nq/I w==;
X-IronPort-AV: E=Sophos;i="5.60,446,1549900800"; d="scan'208";a="109037764"
Received: from mail-sn1nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.59])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 02:01:22 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cxSXGhkohfdZECKiEKlFcDGZmIZPVTh3G4HrO8MCa1E=;
 b=c8gC5DM3XyB82Lqlo9pJ4rmortzVCwbqGJYBtzQXPqdetzGRbTvNnkuDZcnat7z5uJUkFklgzpIqk8/LE9SsPenTd7ucOHq8hJIrj6WdEt831Ot3ONftYuyha5cErS6RY7/r38bYf7mpm6ynFBz69SF258odi2LI+VM/RU5Y6FI=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4720.namprd04.prod.outlook.com (52.135.122.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 18:00:45 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 18:00:45 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-core: trace discovery log change AEN
Thread-Topic: [PATCH] nvme-core: trace discovery log change AEN
Thread-Index: AQHVBEKV1KqUHgm350OO7R3IAUlU/A==
Date: Wed, 8 May 2019 18:00:45 +0000
Message-ID: <SN6PR04MB45273950C09083AEB955480D86320@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190506193320.30884-1-chaitanya.kulkarni@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91ed5f6c-1ede-479a-bd7e-08d6d3df17e8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4720; 
x-ms-traffictypediagnostic: SN6PR04MB4720:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB47204EF59F6418AAB2ADC86A86320@SN6PR04MB4720.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(39860400002)(136003)(396003)(366004)(189003)(199004)(8936002)(6116002)(14454004)(5660300002)(64756008)(8676002)(81156014)(81166006)(3846002)(52536014)(9686003)(6916009)(66476007)(229853002)(2501003)(2351001)(33656002)(25786009)(91956017)(86362001)(2906002)(76116006)(66446008)(316002)(7736002)(305945005)(53936002)(71200400001)(76176011)(476003)(73956011)(26005)(6506007)(14444005)(71190400001)(256004)(53546011)(446003)(66946007)(486006)(66556008)(102836004)(478600001)(7696005)(55016002)(6436002)(186003)(5640700003)(99286004)(74316002)(66066001)(68736007)(6246003)(72206003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4720;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dUiXuR6n0qlf39fWXqNauMzxuRCGd+R+O2tI/8j9HdgjNmlYT2ls/ANcZNNEwv8Mg+3OmYczEZ/SWNtvKMJtmY/m1zIcsw2YNZesOc98zkdcD0MCb17+8Ua5HTYO8fBpWwgPvl27HHu/5dsanMQPQEB7HdHjWDnkWxiSvqaIkaTpnCBfjYB6l2azkXAM3R1OpG2HW/hjPmB45E0qkNbk0qulh4QriDh7fmB51xILRF38RtXUaFa/wICKG4SOd5OPdGHpt3YnkrqJoswHxwQsX/zBJQdD1MbMCYAzeWr2PdTcARtXu2xDLkJs8NnkizaJUl8Ixv6w098gTtGUODPiUx1NpZIM10O08HpjDuIVz2fBhlV+FmKYR4EPvANTap9iWVCQAKNTic9NuAlKjXfnc+pz99EG2AhXxGFqGmYn2EQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91ed5f6c-1ede-479a-bd7e-08d6d3df17e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 18:00:45.0429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_110126_387284_E7907B0F 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ping, it helps in debugging discovery related events.

Can someone please review this ?

On 05/06/2019 12:33 PM, Chaitanya Kulkarni wrote:
> This patch allows the user to trace discovery log change notification.
>
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>   drivers/nvme/host/core.c  | 3 +++
>   drivers/nvme/host/trace.h | 1 +
>   2 files changed, 4 insertions(+)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cd16d98d1f1a..32e12ee42785 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3615,6 +3615,9 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
>   		trace_nvme_async_event(ctrl, aer_notice_type);
>   		queue_work(nvme_wq, &ctrl->fw_act_work);
>   		break;
> +	case NVME_AER_NOTICE_DISC_CHANGED:
> +		trace_nvme_async_event(ctrl, aer_notice_type);
> +		break;
>   #ifdef CONFIG_NVME_MULTIPATH
>   	case NVME_AER_NOTICE_ANA:
>   		trace_nvme_async_event(ctrl, aer_notice_type);
> diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
> index 97d3c77365b8..f2fda5fb01fb 100644
> --- a/drivers/nvme/host/trace.h
> +++ b/drivers/nvme/host/trace.h
> @@ -165,6 +165,7 @@ TRACE_EVENT(nvme_async_event,
>   		__entry->ctrl_id, __entry->result,
>   		__print_symbolic(__entry->result,
>   		aer_name(NVME_AER_NOTICE_NS_CHANGED),
> +		aer_name(NVME_AER_NOTICE_DISC_CHANGED).
>   		aer_name(NVME_AER_NOTICE_ANA),
>   		aer_name(NVME_AER_NOTICE_FW_ACT_STARTING),
>   		aer_name(NVME_AER_ERROR),
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
