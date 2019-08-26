Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DE89C9B3
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 08:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBDF0ncxm8D0XEr87l2jiuzyv1wVOIyVj49Qn4vJ43k=; b=FRBW8om1zQLrF/
	iMS5VkU+D92VY4ffY+P/wRiWuPyr6RUqxZyP4SiTXa5UR9gqnRC9LUfKMm4qUkg+MgTWG5iwSsEvO
	oSZdkOCOAujxwumUrMx9SUUsLEs8MPvwORm/X5PcYGVRNgyNOc/XzqeVbJC5kwwK1YyXLcg+oksGA
	V/j0qQXXIOdMOg0/zezunzrZx10kOt1U+LHvxsbkspSaTL2NE4+/oR4X7PBruZ27AIh53JRCZzKF+
	QqQEMEvMda/m/ylj0HbkKdJIc1x6GldnsN+S8FMSz2USMp3zqmxSxoABWEI7B1e6R860dNe5Ooy++
	71rxNJD1XiBcTPdEdm3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i28vr-0006Cm-OW; Mon, 26 Aug 2019 06:56:52 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i28vj-0006CQ-CX
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 06:56:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B993E68B20; Mon, 26 Aug 2019 08:56:39 +0200 (CEST)
Date: Mon, 26 Aug 2019 08:56:39 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Message-ID: <20190826065639.GA11036@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me> <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
 <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_235643_579694_2D388EFF 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 12:10:23PM -0700, Sagi Grimberg wrote:
>> You are correct that this information can be derived from sysfs, but the
>> main reason why we add these here, is because in udev rule we can't
>> just go ahead and start looking these up and parsing these..
>>
>> We could send the discovery aen with NVME_CTRL_NAME and have
>> then have systemd run something like:
>>
>> nvme connect-all -d nvme0 --sysfs
>>
>> and have nvme-cli retrieve all this stuff from sysfs?
>
> Actually that may be a problem.
>
> There could be a hypothetical case where after the event was fired
> and before it was handled, the discovery controller went away and
> came back again with a different controller instance, and the old
> instance is now a different discovery controller.
>
> This is why we need this information in the event. And we verify this
> information in sysfs in nvme-cli.

Well, that must be a usual issue with uevents, right?  Don't we usually
have a increasing serial number for that or something?

If I look at other callers of kobject_uevent_env none throws in such
a huge context.

>
> Makes sense?
---end quoted text---

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
