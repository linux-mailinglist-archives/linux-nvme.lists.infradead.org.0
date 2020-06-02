Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94D01EBDAA
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 16:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPBXZCxolceKhRfoFRnOA4PUUKhX9fM4gL3uIdtRoIU=; b=iZhoGDAzn4P41z
	D9SHQN2KpxHFJgB2FQznD+slgOh0ZuGG7T4iuUONCwuduli0TBD6sINGPdAznexCAWTcmJ8kWHDk/
	6n1LO/USDFOMICvyAnmc6EphmXwPnwRO723ZeuN8/Q4Z6a5uIUo9bmLLlN6Yzp+dG5aKs+N9H8fjD
	Lfu82xOmz2V4rFXn5CHKIAZ4fKGG9AwpOs+T4kkhGk00DY7lsRGboYRQBcvJip+4d6QiCzmVRUOO5
	bCbtHpaOoPA9et2xM4dJ9E3qi7VTLWnaSvJV4RdLgHBXy/KqyauUn5sskkTuPYi9kUhxJRe+2ZbSy
	5t1MijuXq4Za+tHI6Qzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7bE-0001MH-3S; Tue, 02 Jun 2020 14:09:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzqC-0004ig-CW
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 05:52:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B383A68BEB; Tue,  2 Jun 2020 07:51:52 +0200 (CEST)
Date: Tue, 2 Jun 2020 07:51:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] blkdev: Replace blksize_bits() with ilog2()
Message-ID: <20200602055152.GA11620@lst.de>
References: <20200529141100.37519-1-pilgrimtao@gmail.com>
 <c8412d98-0328-0976-e5f9-5beddc148a35@kernel.dk>
 <CAAWJmAZOQQQeNiTr48OSRRdO2pG+q4c=6gjT55CkWC5FN=HXmA@mail.gmail.com>
 <20200601084426.GB1667318@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601084426.GB1667318@kroah.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_225200_572576_A2CB7326 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Mailman-Approved-At: Tue, 02 Jun 2020 07:09:01 -0700
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
Cc: hoeppner@linux.ibm.com, heiko.carstens@de.ibm.com,
 linux-nvme@lists.infradead.org, dhowells@redhat.com, clm@fb.com,
 deepa.kernel@gmail.com, houtao1@huawei.com, hch@lst.de,
 linux-s390@vger.kernel.org, Tao pilgrim <pilgrimtao@gmail.com>,
 darrick.wong@oracle.com, Mark Fasheh <mark@fasheh.com>, satyat@google.com,
 hch@infradead.org, borntraeger@de.ibm.com, gor@linux.ibm.com,
 ajay.joshi@wdc.com, chaitanya.kulkarni@wdc.com, chao@kernel.org,
 Josef Bacik <josef@toxicpanda.com>, ming.lei@redhat.com, dsterba@suse.com,
 viro@zeniv.linux.org.uk, Muchun Song <songmuchun@bytedance.com>,
 sagi@grimberg.me, jaegeuk@kernel.org, jlbec@evilplan.org, bvanassche@acm.org,
 Jens Axboe <axboe@kernel.dk>, balbi@kernel.org, damien.lemoal@wdc.com,
 martin.petersen@oracle.com, joseph.qi@linux.alibaba.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 asml.silence@gmail.com, linux-btrfs@vger.kernel.org, sth@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 10:44:26AM +0200, Greg KH wrote:
> But does this code path actually show up anywhere that is actually
> measurable as mattering?
> 
> If so, please show that benchmark results.

I think the requests are starting to be a bit unreasonable.  Tao is
replacing a reimplementation of a standard function with that standard
function / compiler builtin.  We don't put such a high burden on that.

And once the proper existing fields are used where possible as shown
in my reply just replacing the rest seems totally obvious - quite
contrary I think keeping a reimplementation would need a high bar.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
