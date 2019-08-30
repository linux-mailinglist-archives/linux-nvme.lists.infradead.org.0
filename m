Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B5EA2F36
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 07:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtNw0DdJwS3CHc7kglMF6vnxW81gA3QPEdkQsa77CPk=; b=OqmG+2pZbBCmpt
	fgTDX37hCJsxcPV7bd2OndtcXcKhL+6rmk11Uc0p7hxnHw8gVNDSXzTPAGP/fpX0ZbyDw7VZ5Irw6
	St54E4+oyFZAogUaehInlWOidONPADZIPmH/Vqa5ZZPxVxJ8uhMFcQYImgT6oqTcrWDNiHjgafHiS
	eRjMXOgEy0qfSJFmEkDvsG1CScL9VR7O1so3E+uaV6Mj/CW+7AzAiYjSUSalxbqsEQuX3/IVen0ce
	uJ8AUwsNKtCq19UxE/iSPidnzqU8Z5SWhQ69OfZeh0v4vxVkpm6++g/9xGvKSLEgRzx0vjK01Jrx9
	Ymbdj7dtZdsm6hw6/2Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Zsg-0006Qz-6z; Fri, 30 Aug 2019 05:55:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ZsT-0006QO-T2
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 05:55:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4D70C68B20; Fri, 30 Aug 2019 07:55:14 +0200 (CEST)
Date: Fri, 30 Aug 2019 07:55:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Message-ID: <20190830055514.GC8492@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me> <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
 <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
 <20190826065639.GA11036@lst.de> <20190826075916.GA30396@kroah.com>
 <ac168168-fed2-2b57-493e-e88261ead73b@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac168168-fed2-2b57-493e-e88261ead73b@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_225518_112565_3AB388E7 
X-CRM114-Status: GOOD (  10.41  )
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

On Thu, Aug 29, 2019 at 11:21:02AM -0700, Sagi Grimberg wrote:
>> Yes we do, userspace should use it to order events.  Does udev not
>> handle that properly today?
>
> The problem is not ordering of events, its really about the fact that
> the chardev can be removed and reallocated for a different controller
> (could be a completely different discovery controller) by the time
> that userspace handles the event.

The same is generally true for lot of kernel devices.  We could reduce
the chance by using the idr cyclic allocator.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
