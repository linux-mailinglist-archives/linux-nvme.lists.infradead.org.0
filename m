Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A553D569AE
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 14:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO8tqy8jZuChzvKeSB8ZYC+aZ1zPoQLNXi7W0P6ZytQ=; b=tWlKCtDkjVPVTA
	N85VEuMjzxSY/G+VAO1AjQDKDltNNPzC8vmeVt5kpl7YEBrnDUciubWC912V8t6Fy2xsd3mmpCP2u
	+i/FWlgpTSAOZZhLslgfdTy7k31ydXx7XFiUmF0MKIw0I+eOFj2r+1MDVhLtZIQ7U3GRpUIM94aWb
	ddA8iRPli3HdDKL0zQb0o5e6OuPMCuS7KFf9yfXElFmz3P4itriDa1rAg58d68x5Gb31FyLDxiOoz
	xJeuZCGrbu3Y4z8o9ITH4gpRURJFvWbtV+/vmvh5sS8QGRboTTZKqbcmI1hPe7T51Ilrco+rSagMr
	bN7B78X02Q1Qqtv2hdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7LC-0000nI-St; Wed, 26 Jun 2019 12:47:59 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7L3-0000mn-Ds
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 12:47:51 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190626124744epoutp012976736b095515c4afa0d32bbf1f3d58~rwGu62WTh1680816808epoutp011
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 12:47:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190626124744epoutp012976736b095515c4afa0d32bbf1f3d58~rwGu62WTh1680816808epoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561553264;
 bh=zH5ztn3xX70umuBcDQcF3am8p4S1Z0cIrMZJqK3E2CY=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=ewcLwayRZ4pRxQPNz2yVY9OIrGq6UqOhW4CY/8xSZOt5TXeLKBjfF0zVmkf4ARe5y
 /5/IqygTb0WTtbW1W3CW4QwdWA9WoeVm4RVvGFjVfxxpVz1//cMk0b+zO9MoX5xRKl
 eP1edKnpi3TYYqa7dyNX5fIGHxUHCY3ICwgk+Evo=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20190626124744epcas5p467d19851ca8e3cde56123960ec2aac30~rwGucKiQG2481324813epcas5p4g;
 Wed, 26 Jun 2019 12:47:44 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7E.C2.04067.079631D5; Wed, 26 Jun 2019 21:47:44 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20190626124743epcas5p105f8e82af483f0cd360b6c3d3944d545~rwGt9ylmb2730427304epcas5p1y;
 Wed, 26 Jun 2019 12:47:43 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190626124743epsmtrp18e50bf82a358dde82e8a3fa29c6cd25b~rwGt9BOcl3178031780epsmtrp1K;
 Wed, 26 Jun 2019 12:47:43 +0000 (GMT)
X-AuditID: b6c32a4b-7a3ff70000000fe3-bf-5d136970370a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 23.52.03662.F69631D5; Wed, 26 Jun 2019 21:47:43 +0900 (KST)
Received: from JOSHIK01 (unknown [107.111.93.135]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20190626124742epsmtip2335a164549cc240db896799ca1f82e62~rwGsgATdi1669716697epsmtip2L;
 Wed, 26 Jun 2019 12:47:42 +0000 (GMT)
From: "kanchan" <joshi.k@samsung.com>
To: "'Christoph Hellwig'" <hch@infradead.org>
In-Reply-To: <20190522102530.GK17019@quack2.suse.cz>
Subject: RE: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Date: Wed, 26 Jun 2019 18:17:29 +0530
Message-ID: <00f301d52c1d$58f1e820$0ad5b860$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: en-us
Thread-Index: AQJoSeMIlXjPMuci1lQDnd0IsY+e8wLu+qiYAUGsmF8ChgSNDQJyI1AuAi3VLdkCT/pK/wHswGQGpQM4GVA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe89lO65Wpyns0SBzGaThpbI6gmhRHwYGRR/6YFkd86jD29jx
 khk0GsylWCZe2ipTs7QZJWqZ17xmYhbesLyVNclFhimINbq4HSW//Z7n//yfy8tL4bIW0o1S
 JSRxmgQ2TiGSEM86vLx81CrncP/BfJKxFeaRTG9OKcbcKtRhTPPoLsZYNC5impp7CGaw4baI
 uftgWsyUd//BmKG8UvygRFlT4a2sKbus/DE9Siiv1ZqR8nVxp1i5UL31uChMEhTJxalSOI1f
 8DlJjPnOJ5G6T36h5IMO0yKzcyZyooAOAGOWQZyJKEpGNyJ4GpWJJMs4j8BisOFCsIjgXadO
 tGowF2gJQWhGUFlajwnBFwQL462kvUpE74DJpWyHw4X2gb6SGWQvwulKDO7pbWK74LTcaibj
 qoOd6TOgnchxMLFsHihoczSS0oFQ8jZLJPBm6DFaCDvjtDvUzd7GhZW2QeN8Fynk5WDt6hQL
 gyPgysy0Y1WgM8RQMVaCCYYj0KR7IRbYGb52166wG1iv61eYh1/jXbhgNiAY0RoJQQiB/qbf
 mP3FcNoLnjT4CYM3QrbN4kgDLQWDXiZUe8Bk7jQpsBymbpatsBKmZmtQDvIwrTnNtOY005pz
 TP+HFSPCjFw5NR8fzfH71HsTuFRfno3nkxOifc8nxlcjx6/yDn2Oqt8cbUc0hRQbpFp3WbiM
 ZFP4tPh2BBSucJHeZ+lwmTSSTbvIaRLPapLjOL4dbaEIhVyaSw6fltHRbBIXy3FqTrOqYpST
 mxYV6B/ttIQW9dz4fCzvxES2u+7x+/1jU70/P7aNBUJoR4MVWvMtiVW2/nWewS5hWR1Rwy0P
 g/7GFnuvPxkygjqZucNWW1Gdv+LUWH1Ss2rPBBxwdUtdavKdl0ZlfRsOebU4N8Ee2u6evkQF
 eJkHWsszI6pmwzblfk/niJeXPEeHFAQfw+72xjU8+w/RrzTPUQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsWy7bCSvG5+pnCsQdMWDYvf06ewWpyesIjJ
 Yvb0ZiaLvbe0LWbOu8NmsWfvSRaLy7vmsFnMX/aU3WL58X9MFlemLGJ24PLYvELLY/OSeo+P
 T2+xePRtWcXocWbBEXaPz5vkAtiiuGxSUnMyy1KL9O0SuDJWzX3EVnBWvGLh/WamBsZVwl2M
 nBwSAiYSq6Y1sHQxcnEICexmlJjzsosRIiEu0XztBzuELSyx8t9zdoiip4wS1zq3MoEk2ARU
 Je796GUDsUUEdCXOLnzBCFLELLCZSWLLtrfMEB3tzBI/f64EG8UJtO9FeyeYLSwQI7F+8kKw
 bhagSZemHWQFsXkFLCUWnu9mg7AFJU7OfAJ0HwfQVD2Jto1g1zELyEtsfzuHGeI6BYndn46y
 QsTFJV4ePcIOcVCSRNOLpywTGIVnIZk0C2HSLCSTZiHpXsDIsopRMrWgODc9t9iwwCgvtVyv
 ODG3uDQvXS85P3cTIzjitLR2MJ44EX+IUYCDUYmHt0FeKFaINbGsuDL3EKMEB7OSCO/SRIFY
 Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzy+ccihQTSE0tSs1NTC1KLYLJMHJxSDYxqJnvkNHnU
 6yMWy7x+6RpmNdmudr3w6ZpbkQwrNB47fgo6/ltflJX/CdeqpRu+vI7+M2PRsv4ihm0NvwVn
 svE8Cepz7+xUyGmVWXl+3/ZpVxqn/PswLXtr2rJDV06azqjkmWHw18Y4NX3vm4SP0ftevX9y
 R+WF9XSlDmnX46eK5BzE1+4ufH9HiaU4I9FQi7moOBEAkovLmLQCAAA=
X-CMS-MailID: 20190626124743epcas5p105f8e82af483f0cd360b6c3d3944d545
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
 <20190510170249.GA26907@infradead.org>
 <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
 <20190520142719.GA15705@infradead.org>
 <20190521082528.GA17709@quack2.suse.cz>
 <20190521082846.GA11024@infradead.org>
 <20190522102530.GK17019@quack2.suse.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_054749_795274_730B4BF2 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: 'Jan Kara' <jack@suse.cz>,
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, anshul@samsung.com, linux-fsdevel@vger.kernel.org,
 prakash.v@samsung.com, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Christoph, 
May I know if you have thoughts about what Jan mentioned below? 

I reflected upon the whole series again, and here is my understanding of
your concern (I hope to address that, once I get it right).
Current patch-set targeted adding two things -
1. Extend write-hint infra for in-kernel callers 
2. Send write-hint for FS-journal

In the process of doing 1, write-hint gets more closely connected to stream
(as hint-to-stream conversion moves to block-layer). 
And perhaps this is something that you've objection on. 
Whether write-hint converts into flash-stream or into something-else is
deliberately left to device-driver and that's why block layer does not have
a hint-to-stream conversion in the first place.
Is this the correct understanding of why things are the way they are?

On 2, sending write-hint for FS journal is actually important, as there is
clear data on both performance and endurance benefits.
RWH_WRITE_LIFE_JOURNAL or REQ_JOURNAL (that Martin Petersen suggested) kind
of thing will help in identifying Journal I/O which can be useful for other
purposes (than streams) as well.
I saw this LSFMM coverage https://lwn.net/Articles/788721/ , and felt that
this could be useful for turbo-write in UFS.   

BR,
Kanchan

-----Original Message-----
From: Jan Kara [mailto:jack@suse.cz] 
Sent: Wednesday, May 22, 2019 3:56 PM
To: 'Christoph Hellwig' <hch@infradead.org>
Cc: Jan Kara <jack@suse.cz>; kanchan <joshi.k@samsung.com>;
linux-kernel@vger.kernel.org; linux-block@vger.kernel.org;
linux-nvme@lists.infradead.org; linux-fsdevel@vger.kernel.org;
linux-ext4@vger.kernel.org; prakash.v@samsung.com; anshul@samsung.com;
Martin K. Petersen <martin.petersen@oracle.com>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
for Ext4 journal

On Tue 21-05-19 01:28:46, 'Christoph Hellwig' wrote:
> On Tue, May 21, 2019 at 10:25:28AM +0200, Jan Kara wrote:
> > performance benefits for some drives. After all you can just think 
> > about it like RWH_WRITE_LIFE_JOURNAL type of hint available for the
kernel...
> 
> Except that it actuallys adds a parallel insfrastructure.  A 
> RWH_WRITE_LIFE_JOURNAL would be much more palatable, but someone needs 
> to explain how that is:
> 
>  a) different from RWH_WRITE_LIFE_SHORT

The problem I have with this is: What does "short" mean? What if userspace's
notion of short differs from the kernel notion? Also the journal block
lifetime is somewhat hard to predict. It depends on the size of the journal
and metadata load on the filesystem so there's big variance.
So all we really know is that all journal blocks are the same.

>  b) would not apply to a log/journal maintained in userspace that works
>     exactly the same

Lifetime of userspace journal/log may be significantly different from the
lifetime of the filesystem journal. So using the same hint for them does not
look like a great idea?

								Honza
--
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
