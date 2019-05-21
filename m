Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9218A2486E
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 08:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZrJswAnb3EqlPHYoyTKQiCM40q5pUYN5ZTxWn8xiGU=; b=BKJ7yS5QKr60at
	bBVSLfVsUIAoiF9d7VNLP+gi8hPlmbkNWSKXo11rTrJ2oM1sSD1dV0Vx4rSIBj8ri1aUxlbnzW6XJ
	QtatWGbn0IfaqnN+zP+Xpeovr7eAc31E5DBGi+UhcvvEtORMyTJlLzay47lLFCTQwJothmwbbyxGJ
	TqWZlhrzj+j1TMKuwk4N9ZysZxs6YElPqoaA9MvUK4uS8YJ6ppuSsRHsYcpLyhN/ua/8e72POIXdJ
	iOzJb/LkdWWBP/N254fc5FGAgJhFQGtwVsoweYJhDj1Jd+EUKd6Fbg+62Q4yRswP/OBLLOdR8UmBx
	cYIIocaa9UIjP75wl9ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSye5-0004NI-VG; Tue, 21 May 2019 06:53:09 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSye0-0004Mv-Dw
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 06:53:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4422F68B05; Tue, 21 May 2019 08:52:42 +0200 (CEST)
Date: Tue, 21 May 2019 08:52:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme-multipath: handle ANA log parse failures gracefully
Message-ID: <20190521065242.GF30402@lst.de>
References: <20190517112912.47055-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517112912.47055-1-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_235304_615872_E199E30B 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 01:29:12PM +0200, Hannes Reinecke wrote:
> When we're failing to parse the ANA log the ana log buffer will
> not be allocated, causing a crash in nvme_mpath_add_disk().

How can we even reach nvme_mpath_add_disk?  If we fail to allocate the
buffer we error out in nvme_mpath_init, which leads to an error return
from nvme_init_identify, which should eventually lead to a probe
failure.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
