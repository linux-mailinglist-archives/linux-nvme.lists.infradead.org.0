Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929E81B875
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0UyHfTAMOV1cpd1ozg7b7z2q0qDVoTOxuwOozMeTMs=; b=WJELjU1LVoBpiR
	ENLtuaSQTKUZOGCl8e+azGQBetSAnrkrYBvy3zd6TeO+eag2vgQAqKg8xulZou1Utw5jYO6MLtQAf
	uJl+zUgugCvOf/2aW7o08KGsBasolrW1xLArVXO4IJsGOEhc92ButOMmGE9nF3u/k7MnKaatal5uF
	EcjAVrV1OHS3he85PLUFTLqidJsb4iCdOlo750ZjH+jyE3LvDROaUEGVH+/Lam39JPbFOVRgcnu3w
	o+8WmRq8pfU9TdPPuflqppm47yqwwMAvTVDMOd74Nd1lQLoULfYmdQO/7AIc+X5BmKAvKluNXRvqH
	KaJlydKrkLMhy6ZN7XLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQC5e-0004wH-86; Mon, 13 May 2019 14:38:06 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQC5a-0004vr-7E
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:38:03 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5F47768AFE; Mon, 13 May 2019 16:37:41 +0200 (CEST)
Date: Mon, 13 May 2019 16:37:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513143741.GA25500@lst.de>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_073802_405691_98E29A9D 
X-CRM114-Status: GOOD (  12.36  )
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

On Mon, May 13, 2019 at 02:24:41PM +0000, Mario.Limonciello@dell.com wrote:
> I've received the result that from one of my partners this patch doesn't
> work properly and the platform doesn't go into a lower power state.

Well, it sounds like your partners device does not work properly in this
case.  There is nothing in the NVMe spec that says queues should be
torn down for deep power states, and that whole idea seems rather
counter productive to low-latency suspend/resume cycles.

> This was not a disk with HMB, but with regard to the HMB I believe it
> needs to be removed during s0ix so that there isn't any mistake that SSD
> thinks it can access HMB memory in s0ix.

There is no mistake - the device is allowed to use the HMB from the
point that we give it the memory range until the point where we either
disable it, or shut the controller down.  If something else requires the
device not to use the HMB after ->suspend is called we need to disable
the HMB, and we better have a good reason for that and document it in
the code.  Note that shutting down queues or having CPU memory barriers
is not going to help with any of that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
