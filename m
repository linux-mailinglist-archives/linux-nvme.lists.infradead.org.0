Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFCF12D5E
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHbTa9Ej0XDbKfrS05Z3lMhqCaPwZ8DsOcWgESfMLdw=; b=HAWa67A6t4cAaE
	iSVN/F5O8MzBf6v2poTnd7K2PYKxUSjOt4Ekzd/00k+8yy5qm6n1vTkYkYqIPNoUXfBlMuf0mj9z0
	4kThjV800pvQHROu4drlP+UB+TV526dHwlEqZn3auJRA11pSpuh4ZxCBxAUmYq6OzEgCbz83uAy1c
	jsufI/rIwChStJA9SwYPNebuVe7O0YSo4gqVizYbU/PwZG1VNFKqk5T6H8uIzPJUid5a1Y6EoeAri
	DcirF0dqaX7+RrNz9Y2iU+vLnRFFFenu1DoMfgdlHivAzak3qe+yDtdsfiKYG52jhwFuw5OfmOTXp
	wkkjN+lKuHnOO+/vjfsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMX9c-0007Qj-H8; Fri, 03 May 2019 12:19:04 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMX9X-0007QM-HC
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:19:00 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E4F0B68AFE; Fri,  3 May 2019 14:18:38 +0200 (CEST)
Date: Fri, 3 May 2019 14:18:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
Message-ID: <20190503121838.GA21041@lst.de>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502114801.23116-1-mlevitsk@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_051859_726551_2C12F41C 
X-CRM114-Status: UNSURE (   7.59  )
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
Cc: Fam Zheng <fam@euphon.net>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, "David S . Miller" <davem@davemloft.net>,
 Jens Axboe <axboe@fb.com>, Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney " <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, John Ferlan <jferlan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I simply don't get the point of this series.

MDEV is an interface for exposing parts of a device to a userspace
program / VM.  But that this series appears to do is to expose a
purely software defined nvme controller to userspace.  Which in
principle is a good idea, but we have a much better framework for that,
which is called vhost.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
