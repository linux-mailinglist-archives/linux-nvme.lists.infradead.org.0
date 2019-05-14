Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44E81C2D7
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 08:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rr0FvppE3C/ENJIMyMSqnziJElzHMrTfVp690YO8vx4=; b=fYz8Gj7XmOnV/x
	oD5RRZMtDDk7FkEg/aaks40kR49JNqehxPVEIsiOuGEVFTBxYEPcV5P91DndERTonuqNjYSAHNJ/h
	ZAficViwWN8EF0+KUToflExJqQ+WPsRnLbn4wbQllFxV00K/+YObQHOrlRMZ3fN7d6ir6GF72xk38
	8TB40lgtW1EIM61z6DjHvnI4VUy3QY4ge6dTFLmBypLqZOjdAFxRMSgvI+FgOYYMA1Vhj/dxoMkT4
	O4GO7mPK/u3aw5+M7Qu2vlujHZpkvN9gzE59bjUk10tSVShOrVXGwfjBD7Y7cylNVoG6sbc0nx/i5
	K+dPuWqp8ql+wTMdTwww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQfX-0007CW-BG; Tue, 14 May 2019 06:12:07 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQfS-0007CB-I7
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 06:12:03 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 8BB1C68AFE; Tue, 14 May 2019 08:11:41 +0200 (CEST)
Date: Tue, 14 May 2019 08:11:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190514061141.GA7059@lst.de>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143754.GE15318@localhost.localdomain>
 <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
 <20190513145708.GA25897@lst.de>
 <df020e90e8b54244b37910a2a7965671@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df020e90e8b54244b37910a2a7965671@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231202_749117_1144DE32 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 06:01:39PM +0000, Mario.Limonciello@dell.com wrote:
> When using HMB the SSD will be writing to some memory mapped region.
> Writing to
> that region would use DMA to access host memory, no?

Memory mapped region?  It will use the devices DMA engine to write
host memory, which we explicitly allowed it.

> If the DMA controller is not functional writing to that region won't work properly as 
> it can't access that memory.

The DMA controller is in the device.  External DMA controllers are only
used on very low-end periphals, usually cheap IP blocks like SPI
controllers or similar.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
