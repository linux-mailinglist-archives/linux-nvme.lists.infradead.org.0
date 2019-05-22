Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC2C261B9
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 12:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgT3iuoJVy987r9EasOvpuozxEqFN3iawGluxKASeDQ=; b=A6WyTB0msKnzJr
	+4VDYjMoYk8GiUFZecp4Ki8BvL1Y/mHMnQ2CExaN+c0i0xl7z3pYDh5jqFSXNJ8ctwIVc41P86fue
	6AASRrGx9933x6vvXZVbTDMTpSqiQIMJm9meRGSwXOmOwhbSK7UK/2AxH4k0NtCdZ/CDkkouK/JMQ
	7cODo9ySFJfnVkzK6ttgihcXKjH0ZTEC3K6CjgFT/eW7K+aNC8y+2qIr2rVvKrCyTi33F1OqB9KoD
	rXb5r1fRvJI79RrAhr7Z3xWnfal5ltOw9xP0oNuPr6aW9lHtPb2OLRV8AcK/8qTLVfKir6Z5jSfng
	JfekClXhOLyvLhyuMGNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTORO-0001BH-SN; Wed, 22 May 2019 10:25:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTORD-0000vY-0u
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 10:25:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 35A53AEB6;
 Wed, 22 May 2019 10:25:31 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 804F91E3C5F; Wed, 22 May 2019 12:25:30 +0200 (CEST)
Date: Wed, 22 May 2019 12:25:30 +0200
From: Jan Kara <jack@suse.cz>
To: 'Christoph Hellwig' <hch@infradead.org>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Message-ID: <20190522102530.GK17019@quack2.suse.cz>
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
 <20190510170249.GA26907@infradead.org>
 <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
 <20190520142719.GA15705@infradead.org>
 <20190521082528.GA17709@quack2.suse.cz>
 <20190521082846.GA11024@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521082846.GA11024@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_032536_012529_744487A1 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jan Kara <jack@suse.cz>, "Martin K. Petersen" <martin.petersen@oracle.com>,
 kanchan <joshi.k@samsung.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 anshul@samsung.com, linux-fsdevel@vger.kernel.org, prakash.v@samsung.com,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue 21-05-19 01:28:46, 'Christoph Hellwig' wrote:
> On Tue, May 21, 2019 at 10:25:28AM +0200, Jan Kara wrote:
> > performance benefits for some drives. After all you can just think about it
> > like RWH_WRITE_LIFE_JOURNAL type of hint available for the kernel...
> 
> Except that it actuallys adds a parallel insfrastructure.  A
> RWH_WRITE_LIFE_JOURNAL would be much more palatable, but someone needs
> to explain how that is:
> 
>  a) different from RWH_WRITE_LIFE_SHORT

The problem I have with this is: What does "short" mean? What if
userspace's notion of short differs from the kernel notion? Also the
journal block lifetime is somewhat hard to predict. It depends on the size
of the journal and metadata load on the filesystem so there's big variance.
So all we really know is that all journal blocks are the same.

>  b) would not apply to a log/journal maintained in userspace that works
>     exactly the same

Lifetime of userspace journal/log may be significantly different from the
lifetime of the filesystem journal. So using the same hint for them does
not look like a great idea?

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
