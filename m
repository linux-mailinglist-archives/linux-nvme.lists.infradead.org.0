Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB14159C47
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 23:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZAOkveHG9ufYlxOSeVhSoCzvWVeJMSr8KDQZoFZ6j0=; b=cXTJEfSA+VgVy8
	OWFyk4m2VG3xZ1Ltv2L3Fr5RLT14EOowaffI6hz0X0FnUfAI1XgpiHGPsNO+n38pTbyagGbYfddDG
	Gasid+W3Hhp0lFjKX7nr8DCxhjUifTlIbmaBWAMejoC1Y51N34fbV32bisPNsNSgQYvyVyIkHs0c1
	OUA8TQLvUIlCD2EAd7r+UvY2ZOaWkCsdTxy62ZiyISWRn53gdyQQe+ZxIJwaNqP61jVhnI7oW9hCM
	UF0+TSKyaYtkSVlYXOcxvDPNcPJmVrx7O6BNKxNMpsn6Q/olvb/LAm3XhUl9VnXHBsPa3XxRgpwTt
	8HzTOop+3U+635FqrKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1e7E-0004Bf-Up; Tue, 11 Feb 2020 22:34:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1e78-0004An-Nc
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 22:34:44 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AF5B206D7;
 Tue, 11 Feb 2020 22:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581460482;
 bh=4ZWcVUYGTTXNlemavC1awQ9lNN4NUCpuIab9DenSBj0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1k9DY6BmU3YwzvIGuNUzqIhl60HgevrqM2kwEzVvizviRbiaaLsyV4491IOm2yzPP
 8sYn54Zwl8Mw34AbtX55a5Mf6ATflxXD+0hOpEfaQJv8q9ZcYXelhqkSHLHQ3HBECe
 JArJgd4uqXmvRsXBPwr/ZwzhWwpLR5ON9rO2nQkk=
Date: Wed, 12 Feb 2020 07:34:35 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [COMPILE TESTED PATCH] nvme: code cleanup nvme_identify_ns_desc()
Message-ID: <20200211223435.GA22041@redsun51.ssa.fujisawa.hgst.com>
References: <20200211221054.9013-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211221054.9013-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_143442_807922_483962F3 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 02:10:54PM -0800, Chaitanya Kulkarni wrote:
> +static int nvme_process_ns_desc(struct nvme_ctrl *ctrl, struct nvme_ns_ids *ids,
> +				void *data, int pos)
> +{
> +	const char *warn_str = "ctrl returned bogus length:";
> +	struct nvme_ns_id_desc *cur = data + pos;

<snip>

> @@ -1081,42 +1125,10 @@ static int nvme_identify_ns_descs(struct nvme_ctrl *ctrl, unsigned nsid,
>  		if (cur->nidl == 0)
>  			break;

...

> +		len = nvme_process_ns_desc(ctrl, ids, data, pos);

You pass a 'void *data' and immediately cast that to 'struct
nvme_ns_id_desc *cur'. The calling function did that previously too,
so you can just pass that 'cur' and use its type as the parameter to get a
slightly cleaner patch.

Otherwise, patch looks fine to me.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
