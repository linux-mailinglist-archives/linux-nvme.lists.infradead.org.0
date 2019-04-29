Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B497BE960
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 19:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9V3PaZE/GA2qyEeFrwNX4bdzVabNyNz8LL/nWuSk2Vo=; b=KPJiLjdbTpdgHm7ZMTEZ7zA8t
	lgXPNpaP5k5A5hzUeOxCJIb15kCsk5+H+xvy6WsqOG87WX3PNVcD7bnMy24e7tkuJWPFbL2FrkuxA
	Kyu1BYOgONfVQUs/vvK++d1lPb0hPaf65ZINbGtF/5xsndUY9N8+aqa5R2tOHVXIh3CaNcmV04WWp
	wGHLrhGWpZtGCgzCaDlPTkaU8l9bdAKnI9GR9sugO6z5K+fDvly4zWIescoVFQpnlWQkxJXiriXOx
	aA683DzpfViFCEGkgP3zDkQM5V6ZfvgnT+pP1Gn6kj2in7R5+9kwPYraZejYh4ceZs8fFBPNsZKWL
	8XVvDs/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAH3-0007Xy-54; Mon, 29 Apr 2019 17:41:05 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAGt-0007Pk-84
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 17:40:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 10:40:54 -0700
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="138470197"
Received: from unknown (HELO [10.232.112.165]) ([10.232.112.165])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES128-SHA;
 29 Apr 2019 10:40:53 -0700
Subject: Re: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <067b8ef5-abea-2bc8-9da5-a39ac3b54a1b@intel.com>
Date: Mon, 29 Apr 2019 11:40:52 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_104055_743285_E5CB1C29 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hare@suse.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 4/28/2019 9:24 PM, Chaitanya Kulkarni wrote:
> From: Hannes Reinecke <hare@suse.com>
> 
> This patch intoduces nvme-ctrl state name array which is used inthe the
s/intoduces /introduces/
s/inthe/in the/

> later patch to improve the logging of the ctrl state.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>   drivers/nvme/host/nvme.h | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 527d64545023..01a36bbafed6 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -146,6 +146,16 @@ enum nvme_ctrl_state {
>   	NVME_CTRL_DEAD,
>   };
>   
> +static const char *const nvme_ctrl_state_name[] = {
> +	[NVME_CTRL_NEW]         = "new",
> +	[NVME_CTRL_LIVE]        = "live",
> +	[NVME_CTRL_ADMIN_ONLY]  = "only-admin",
> +	[NVME_CTRL_RESETTING]   = "resetting",
> +	[NVME_CTRL_CONNECTING]  = "connecting",
> +	[NVME_CTRL_DELETING]    = "deleting",
> +	[NVME_CTRL_DEAD]        = "dead",
> +};

I haven't been paying attention if this was bought up before but won't 
this create multiple copies of this data for every source file the 
includes the header file?

> +
>   struct nvme_ctrl {
>   	bool comp_seen;
>   	enum nvme_ctrl_state state;
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
