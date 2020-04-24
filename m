Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949A71B6EA0
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 09:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zC+RMf7iS4Pj54vFiQYQIN+949h5rXkrcYgKLjmD9DY=; b=o8Tw/7tSnVzxEf
	GMfagdNbU52Lom/6pP5p+iBRMxaoz8C7cYhsUxR8fP0iw7Gb7DdIL3hrpLAj1rAc/hwTsAgcJrvaJ
	6p3HwyAZknYX/S4AA0fWZAgzMY265rOxjcxZOr9L6caNFqx2DA6MKfrIXRi9NXHdSn4/maX/ndoo4
	U+Py930sGc4Bcw8cP/5WjMrsN7RXrBQd0v+gAe2weIQIg0vhQBAjpuepyHLgZ8MghNCroCaPpoG2T
	D2iWHUgoD2TOjA86q07Yob2MNXJxdWDe2RGXC8Q+HlEaJWOxeIibdNt4ovLj+ufu0t/AqOuwqXhNO
	dymJhIWCoHRfTkmDMsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsOj-0001AI-0G; Fri, 24 Apr 2020 07:05:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsOZ-0007h6-Nt
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 07:05:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DF81E68CEE; Fri, 24 Apr 2020 09:05:02 +0200 (CEST)
Date: Fri, 24 Apr 2020 09:05:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH V3 0/7] nvmet: add target ns revalidate support
Message-ID: <20200424070502.GA24059@lst.de>
References: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
 <20200422081936.GA25035@lst.de>
 <BYAPR04MB4965850E7D094ED44D1C360786D30@BYAPR04MB4965.namprd04.prod.outlook.com>
 <3f112b29-91cc-620c-6262-de3e322a29fc@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f112b29-91cc-620c-6262-de3e322a29fc@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_000507_944772_3A3F459D 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 01:20:25AM -0700, Sagi Grimberg wrote:
> This is cumbersome in my mind... and the polling part is
> kinda bothering me...
>
> I still think that having this sit in userspace is so much more
> elegant really.
>
> A simple service that watches with inotify on the device_paths (files or
> bdevs - which are also files) and trigger revalidate via configfs when
> it gets an attrib event.

Eactly - plus udev watch for the block device KOBJ_CHANGE notifications.
>
> We can even have it watch configfs and automatically add watchers
> when new namespaces are enabled and remove watchers when namespaces are
> disabled, so it can be completely zero touch.
>
> This can sit as a simple systemd service that nvmetcli installs.
>
> I'd very much prefer this over the proposed approach...

Same here.  The idea of having a kernel thread poll things for which
we have notification, and an easy userspace way to handle them just
seems like a whole lot of bloat.

Also remember the use case:  shrinking a volume is a pretty destructive
operation and not really practically relevant for a live volume.  So
the interesting case is growing, and having a little delay or even
a manual interaction isn't really the end of the world there.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
