Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DBD215E3
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIyG3COrLITfBc7aDGnIi5GOhWjuHRn6qaGvpCMU6Nc=; b=lZOMD++Oz91OrV
	SHSBkocjkkfKRdIUinW2ma6wu2V6prOZcztbiTmiZypoZRo65x3DmfFFS2qFxkP7yA3UCCOobn9XC
	RuF9/s1WJ87E61d+CoTMXwjJWwh/acXNXXZLXn74G2AzPdbd+WfNujPTKtfGs0FazD1As226DkqL9
	fD9zwuLQi8u5IByHy2q9lW3l4DvSbA2/EPhTHf7LMWjzyvg5B7DbDjD/9HtELzo4UWV5BPn/QwlaG
	fCmKDpjjSna6L38HJGfqwhq3/7BrFUXULjfwwx+Dhj7TEOQdJqaYwZWYMzfG/ERn5pdqmNBE8kfjq
	HXIL7zmZ/oWhAhKVtVCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYoI-0000Nu-33; Fri, 17 May 2019 09:05:50 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYoD-0000NX-9S
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 09:05:46 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 15D8C68B02; Fri, 17 May 2019 11:05:22 +0200 (CEST)
Date: Fri, 17 May 2019 11:05:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190517090521.GA15509@lst.de>
References: <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_020545_479758_FBFCC94D 
X-CRM114-Status: UNSURE (   8.79  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 10:39:19AM +0200, Rafael J. Wysocki wrote:
> I forgot about one thing which is relevant here, sorry about that.

While we got your attention, let me repeat two questions / requests
that seem to have got lost:

 (1) in what system power states are the devices not allowed to
     every use DMA to access host memory?  Disabling the host memory
     buffer for NVMe devices can be somewhat expensive, so we'd prefer
     to only do that if we really have to
 (2) can we get some good kerneldoc comments for
     pm_suspend_via_firmware and pm_suspend_via_s2idle explaining
     when exactly they will return true, and how a driver can make
     use of these facts?  Right now these appear a little too much
     black magic to be useful

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
