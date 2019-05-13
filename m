Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FA71B95E
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+24fb2iJFUvANqM62XDm1u2dfNWxeT8EYWmBs/TFQh0=; b=Q39Intoa5Y2Zgd
	QPpDpftyJDmW2egEU8bNn+Ub+IlXOf01QIx7zlKPRjdIswXhBZjMSNewDlsB4CbuE1y5m3KJmXAlq
	wwe5k7RNuqKJjMoStZOJ+5eio1rb3XpwUSQqYiIb0J9OqYI6L/mbNkmdk8X3/tcf7tXg9LjXwjKZp
	HV0mbwJ/f0DYeOkNxdG7iYPrMHSbUZkgnYXG9J1hgsIcMxCbrxeFADLgiemVZUGBjje1pcEgZIA/N
	lq6AeWG2e2GDQvbDlbh+QnRo059Py/+i4AQqFzT9tRHpKpXTy9aRwAK5tJzVv85uqEBTSBPZ1RvSo
	eLMvvfdoocIrNUDEErYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCSK-0008M6-5z; Mon, 13 May 2019 15:01:32 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCRb-0008Go-7R
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:00:48 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 08:00:46 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 13 May 2019 08:00:46 -0700
Date: Mon, 13 May 2019 08:55:24 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513145522.GA15421@localhost.localdomain>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
 <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080047_311624_E8A70186 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
> > Well, it sounds like your partners device does not work properly in this
> > case.  There is nothing in the NVMe spec that says queues should be
> > torn down for deep power states, and that whole idea seems rather
> > counter productive to low-latency suspend/resume cycles.
> 
> Well I've got a thought, quoting the NVME spec:
> "After a successful completion of a Set Features command for this feature, the controller shall be in the
> Power State specified. If enabled, autonomous power state transitions continue to occur from the new state."
> 
> If APST is enabled on this disk, what is to stop an autonomous  reverse
> transition from queue activity on the way down?

Regardless of whether APST is enabled or not, the controller may
autonomously transition out of a host requested low power state in
response to host activity. Exiting a low power state should mean some
other task is actively using the device, and if that's the case, why are
you trying to enter a low power state in the first place? Alternatively,
if host activity really is idle, then why is the device autonomously
leaving the requested state?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
