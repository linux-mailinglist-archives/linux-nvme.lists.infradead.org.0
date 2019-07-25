Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C12875858
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjRUicJKrDiiRFykcdh2Jw9MCb7p6qH36uzhWyIVorw=; b=YRizGlZXVdzKcq
	xUuWcc+BKVrfkO3e5OqER3ZymlH16zvTxl9pDTy6OhxzgpZyloDrQtBzuSvJqOMwBGOzqydg03By3
	wwkLhvyhkgeBa76EA4mKB3R39gQzTsoKiRBV3N9dDPuj23N1D5g/l9VfRkog2fzD/ILAmFYkf6PkQ
	c2jUkSMlKZMlth7BCVLOMcCvaqqpA414gOFMecNnubrt8DYR5Xdr4VP/fUf59jRSbhtMtG9Z9qMjV
	N7DamkkLErokadJmDSQChdfoM1ERt/sV3YPmEDArHc7VwjqcVFlHHDfSYoCCeAHsKWBEbgeWcsCpP
	r/gRIfKUiPOaOL7tlB2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjjj-0005P1-B1; Thu, 25 Jul 2019 19:49:11 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjja-0005OU-2S
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:49:03 +0000
Received: from 79.184.253.188.ipv4.supernova.orange.pl (79.184.253.188) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id 62da38be5cc283a8; Thu, 25 Jul 2019 21:48:58 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Date: Thu, 25 Jul 2019 21:48:57 +0200
Message-ID: <2428826.VBuqOhikiK@kreacher>
In-Reply-To: <20190725145209.GA6949@localhost.localdomain>
References: <2332799.izEFUvJP67@kreacher>
 <20190725145209.GA6949@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124902_269416_C6C883B7 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thursday, July 25, 2019 4:52:10 PM CEST Keith Busch wrote:
> On Thu, Jul 25, 2019 at 02:51:41AM -0700, Rafael J. Wysocki wrote:
> > Hi Keith,
> > 
> > Unfortunately,
> > 
> > commit d916b1be94b6dc8d293abed2451f3062f6af7551
> > Author: Keith Busch <keith.busch@intel.com>
> > Date:   Thu May 23 09:27:35 2019 -0600
> > 
> >     nvme-pci: use host managed power state for suspend
> > 
> > doesn't universally improve things.  In fact, in some cases it makes things worse.
> > 
> > For example, on the Dell XPS13 9380 I have here it prevents the processor package
> > from reaching idle states deeper than PC2 in suspend-to-idle (which, of course, also
> > prevents the SoC from reaching any kind of S0ix).
> > 
> > That can be readily explained too.  Namely, with the commit above the NVMe device
> > stays in D0 over suspend/resume, so the root port it is connected to also has to stay in
> > D0 and that "blocks" package C-states deeper than PC2.
> > 
> > In order for the root port to be able to go to D3, the device connected to it also needs
> > to go into D3, so it looks like (at least on this particular machine, but maybe in
> > general), both D3 and the NVMe-specific PM are needed.
> > 
> > I'm not sure what to do here, because evidently there are systems where that commit
> > helps.  I was thinking about adding a module option allowing the user to override the
> > default behavior which in turn should be compatible with 5.2 and earlier kernels.
> 
> Darn, that's too bad. I don't think we can improve one thing at the
> expense of another, so unless we find an acceptable criteria to select
> what low power mode to use, I would be inclined to support a revert or
> a kernel option to default to the previous behavior.
> 
> One thing we might check before using NVMe power states is if the lowest
> PS is non-operational with MP below some threshold. What does your device
> report for:
> 
>   nvme id-ctrl /dev/nvme0

NVME Identify Controller:
vid     : 0x1c5c
ssvid   : 0x1c5c
sn      : MS92N171312902J0N   
mn      : PC401 NVMe SK hynix 256GB               
fr      : 80007E00
rab     : 2
ieee    : ace42e
cmic    : 0
mdts    : 5
cntlid  : 1
ver     : 10200
rtd3r   : 7a120
rtd3e   : 1e8480
oaes    : 0x200
ctratt  : 0
oacs    : 0x17
acl     : 7
aerl    : 3
frmw    : 0x14
lpa     : 0x2
elpe    : 255
npss    : 4
avscc   : 0x1
apsta   : 0x1
wctemp  : 352
cctemp  : 354
mtfa    : 0
hmpre   : 0
hmmin   : 0
tnvmcap : 0
unvmcap : 0
rpmbs   : 0
edstt   : 10
dsto    : 0
fwug    : 0
kas     : 0
hctma   : 0
mntmt   : 0
mxtmt   : 0
sanicap : 0
hmminds : 0
hmmaxd  : 0
nsetidmax : 0
anatt   : 0
anacap  : 0
anagrpmax : 0
nanagrpid : 0
sqes    : 0x66
cqes    : 0x44
maxcmd  : 0
nn      : 1
oncs    : 0x1f
fuses   : 0x1
fna     : 0
vwc     : 0x1
awun    : 7
awupf   : 7
nvscc   : 1
acwu    : 7
sgls    : 0
mnan    : 0
subnqn  : 
ioccsz  : 0
iorcsz  : 0
icdoff  : 0
ctrattr : 0
msdbd   : 0
ps    0 : mp:6.00W operational enlat:5 exlat:5 rrt:0 rrl:0
          rwt:0 rwl:0 idle_power:- active_power:-
ps    1 : mp:3.80W operational enlat:30 exlat:30 rrt:1 rrl:1
          rwt:1 rwl:1 idle_power:- active_power:-
ps    2 : mp:2.40W operational enlat:100 exlat:100 rrt:2 rrl:2
          rwt:2 rwl:2 idle_power:- active_power:-
ps    3 : mp:0.0700W non-operational enlat:1000 exlat:1000 rrt:3 rrl:3
          rwt:3 rwl:3 idle_power:- active_power:-
ps    4 : mp:0.0070W non-operational enlat:1000 exlat:5000 rrt:3 rrl:3
          rwt:3 rwl:3 idle_power:- active_power:-




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
