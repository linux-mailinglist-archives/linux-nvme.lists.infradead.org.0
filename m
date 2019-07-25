Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4739B75870
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3kDlv2MdN944xfq+jw+HhvC59J9Yc19yZqfTGMlWvc=; b=JFCbKfO4ALICpv
	PLwXEJ3biwoOuh3VFLdejznfKogYWsU8kebIo9ZkXEUKREjTHQ2E+1gsk/hbHeaE4ZIZeJuouhAgZ
	bBrhDjWI/5HzI6UcVIDhqtn5T/zGLmAoEwys7OtbFpkg7WHNb+VuWjcXtklbej2fiWoP70atlmJAA
	6PrZlD6ReJcdLzonOrnoR6No4+rCkrJUUMIrc223h64fG9PKPirF0SNWTo4wAb6QbQzU4A16R+yzV
	0WFHqjN1iKhn0+mZhTps6jUfzouw3QO9CmdvfJeSLNwLf6NxLtKJw7hMMbQYxoybct04ggxYxn5U+
	I2AJlBrCi7fLO519xcMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjqL-00008C-AI; Thu, 25 Jul 2019 19:56:01 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjqE-00007R-Ao
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:55:55 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 12:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="171944447"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jul 2019 12:55:51 -0700
Date: Thu, 25 Jul 2019 13:52:59 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Message-ID: <20190725195258.GA7307@localhost.localdomain>
References: <2332799.izEFUvJP67@kreacher>
 <20190725145209.GA6949@localhost.localdomain>
 <2428826.VBuqOhikiK@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2428826.VBuqOhikiK@kreacher>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_125554_411913_CF7E720D 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 09:48:57PM +0200, Rafael J. Wysocki wrote:
> NVME Identify Controller:
> vid     : 0x1c5c
> ssvid   : 0x1c5c
> sn      : MS92N171312902J0N   
> mn      : PC401 NVMe SK hynix 256GB               
> fr      : 80007E00
> rab     : 2
> ieee    : ace42e
> cmic    : 0
> mdts    : 5
> cntlid  : 1
> ver     : 10200
> rtd3r   : 7a120
> rtd3e   : 1e8480
> oaes    : 0x200
> ctratt  : 0
> oacs    : 0x17
> acl     : 7
> aerl    : 3
> frmw    : 0x14
> lpa     : 0x2
> elpe    : 255
> npss    : 4
> avscc   : 0x1
> apsta   : 0x1
> wctemp  : 352
> cctemp  : 354
> mtfa    : 0
> hmpre   : 0
> hmmin   : 0
> tnvmcap : 0
> unvmcap : 0
> rpmbs   : 0
> edstt   : 10
> dsto    : 0
> fwug    : 0
> kas     : 0
> hctma   : 0
> mntmt   : 0
> mxtmt   : 0
> sanicap : 0
> hmminds : 0
> hmmaxd  : 0
> nsetidmax : 0
> anatt   : 0
> anacap  : 0
> anagrpmax : 0
> nanagrpid : 0
> sqes    : 0x66
> cqes    : 0x44
> maxcmd  : 0
> nn      : 1
> oncs    : 0x1f
> fuses   : 0x1
> fna     : 0
> vwc     : 0x1
> awun    : 7
> awupf   : 7
> nvscc   : 1
> acwu    : 7
> sgls    : 0
> mnan    : 0
> subnqn  : 
> ioccsz  : 0
> iorcsz  : 0
> icdoff  : 0
> ctrattr : 0
> msdbd   : 0
> ps    0 : mp:6.00W operational enlat:5 exlat:5 rrt:0 rrl:0
>           rwt:0 rwl:0 idle_power:- active_power:-
> ps    1 : mp:3.80W operational enlat:30 exlat:30 rrt:1 rrl:1
>           rwt:1 rwl:1 idle_power:- active_power:-
> ps    2 : mp:2.40W operational enlat:100 exlat:100 rrt:2 rrl:2
>           rwt:2 rwl:2 idle_power:- active_power:-
> ps    3 : mp:0.0700W non-operational enlat:1000 exlat:1000 rrt:3 rrl:3
>           rwt:3 rwl:3 idle_power:- active_power:-
> ps    4 : mp:0.0070W non-operational enlat:1000 exlat:5000 rrt:3 rrl:3
>           rwt:3 rwl:3 idle_power:- active_power:-

Hm, nothing stands out as something we can use to determine if we should
skip the nvme specific settings or allow D3. I've no other ideas at the
moment for what we may check.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
