Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164D81B92F
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bGTum6P+VyN6gf5VqDyX8vctx8SZBQafI2gJFCI95o=; b=MJFxRYBqkfyVKN
	HaQcdadwcFmI1kR3SYIB/Gdbp4Fxnc85A2Bct4X6gMqVnDSBJcqUGshIiGMDS9Lykf7Lb5aQJBjB2
	Rf/tvsvLEbNA794qVPsiso4Y+Te8D3Zru/HUIV8Pu65Gf0aaEReYr5d6+V14TuDBfbVYv320c3wMI
	9zs77tcNx7I2QrzVXhchRuRb6fMZTtai9ggrzZmHIkBPqNs7K4EIduxlY84bx1TLpfP/dLAP5f6Pt
	knT9Tf3j9HASCaFh5Zyy2PrxhIKT7qu68p9t91uBVPXQgiRWg9AWKefKQBvcU93A7o7iVwpYQoJ2i
	HYH36DQIHhuwk/5wVrVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCLg-0003af-OO; Mon, 13 May 2019 14:54:40 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCLc-0003aA-Ss
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:54:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7B72E68AFE; Mon, 13 May 2019 16:54:15 +0200 (CEST)
Date: Mon, 13 May 2019 16:54:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513145415.GA25774@lst.de>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
 <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_075437_075445_699CB7FA 
X-CRM114-Status: GOOD (  11.07  )
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
 keith.busch@intel.com, kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 02:43:43PM +0000, Mario.Limonciello@dell.com wrote:
> Well I've got a thought, quoting the NVME spec:
> "After a successful completion of a Set Features command for this feature, the controller shall be in the
> Power State specified. If enabled, autonomous power state transitions continue to occur from the new state."
> 
> If APST is enabled on this disk, what is to stop an autonomous  reverse
> transition from queue activity on the way down?

Nothing.  But once the system is suspending we should not see I/O.

If we see I/O the queue freezing in the original patch Kai Heng and the
previous one from Keith is probably required, although I suspect it
just papers over problems higher up in the queue.  If we don't see I/O
the device is just behaving oddly.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
