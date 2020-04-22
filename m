Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD2A1B3A23
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 10:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HlSG/C2JnAcX1yiQkAknGpYZpxOD81UpZwXntrw9gA=; b=ri4XZ1vUty3RAn
	1ijNsdxDGFiK0SCO4+Jiz3oG+zPnkJkTEpATFVkBAW24RcRTHvhoh6gapubkpCetOxvzsxruAJPcS
	LBFY0YWHTMq4WYVHTdovG1jsjU6NsyPnirByvrs8xbnYjIGLJnrxO/1ovZyBA1Okw05tRLasz56tq
	Ad23/OzZfLBOrpDO85MDFxY7gltzv7/c+ZypP9jzrbRThbrUARFugsg06oA9HJhAKj2Dsfy7wsHDK
	kOcAYziOvaYAR6ZOsX5rSC5VuktesQO2MOKO4bZEzFfbtl6ZWDJLQPoRRy1ku056FZoQAlw2dmZkl
	B9ByKMIS6zfkcLAZNB8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAnw-0006Kt-II; Wed, 22 Apr 2020 08:32:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAnh-000680-Tj
 for linux-nvme@lists.infradead.org; Wed, 22 Apr 2020 08:32:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1AF7368C7B; Wed, 22 Apr 2020 10:32:08 +0200 (CEST)
Date: Wed, 22 Apr 2020 10:32:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 5/6] nvmet: centralize port enable access for configfs
Message-ID: <20200422083207.GB25341@lst.de>
References: <20200419235242.60355-1-chaitanya.kulkarni@wdc.com>
 <20200419235242.60355-6-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419235242.60355-6-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_013210_112781_D3BCBC81 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static bool nvmet_is_port_enabled(struct nvmet_port *p, const char *caller)
> +{
> +	bool enabled;
> +
> +	/*
> +	 * Right now port->enabled is accessed in follwoing two code paths
> +	 * which are protected by the nvmet_config_sem :-
> +	 * 1. nvmet_subsys allow/drop link() -> nvmet_port_enable/disable()
> +	 *    setting port->enabled true/false respectively.
> +	 * 2. nvmet_referral_enable/disable() -> nvmet_port_enable/disable()
> +	 *    setting port->enabled true/false respectively.
> +	 * Use read nvmet_config_sem when reading enable condition.
> +	 */
> +	down_read(&nvmet_config_sem);
> +	enabled = p->enabled;
> +	up_read(&nvmet_config_sem);

Taking a lock around checking a single scalar value is rather pointless.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
