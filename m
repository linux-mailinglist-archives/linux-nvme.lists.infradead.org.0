Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B6124A4B
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 10:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLgUR26MDZl8GXiAsGLByghE61ncl4YItRCleci96eg=; b=bCWnQ2YGkdJ2DZ
	KLNm69a7/8itiAxOxZdkwibWIdZ53cDLZubOgMqOG6D2OU5QM/F/UWVcGBJdLAKwW2Tak1ESO+Bh6
	Y3Z5iHnDyOOGEQAtp/OTAh5a3OBxOF6hn9K8VrzgDI62EScPnBLtBMbc5ySqmy2n2cr9mLCDh10tR
	cDt5XKQRUndk3CxakDlZ7EIbVzxbLR9kl2CTIy2MMLqLdNw/pgckMFwrGwXbrK+Em06Hv6IwSmQz/
	9Txik1NOsZHA7Wr8w0dnKroZefWaGa0my6x3IUvdqBCyENAhyCa/IOvpeiEvmIa1qDPnC5U0hF9ii
	KfNInmYbGbUGITBzjymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT05a-0004x0-IQ; Tue, 21 May 2019 08:25:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT05V-0004v8-Iw
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 08:25:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AA0DAAD94;
 Tue, 21 May 2019 08:25:29 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id EF1FD1E3C72; Tue, 21 May 2019 10:25:28 +0200 (CEST)
Date: Tue, 21 May 2019 10:25:28 +0200
From: Jan Kara <jack@suse.cz>
To: 'Christoph Hellwig' <hch@infradead.org>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Message-ID: <20190521082528.GA17709@quack2.suse.cz>
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
 <20190510170249.GA26907@infradead.org>
 <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
 <20190520142719.GA15705@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520142719.GA15705@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_012533_770722_38EC899C 
X-CRM114-Status: GOOD (  15.45  )
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 kanchan <joshi.k@samsung.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 anshul@samsung.com, linux-fsdevel@vger.kernel.org, prakash.v@samsung.com,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon 20-05-19 07:27:19, 'Christoph Hellwig' wrote:
> On Fri, May 17, 2019 at 11:01:55AM +0530, kanchan wrote:
> > Sorry but can you please elaborate the issue? I do not get what is being
> > statically allocated which was globally available earlier.
> > If you are referring to nvme driver,  available streams at subsystem level
> > are being reflected for all namespaces. This is same as earlier. 
> > There is no attempt to explicitly allocate (using dir-receive) or reserve
> > streams for any namespace.  
> > Streams will continue to get allocated/released implicitly as and when
> > writes (with stream id) arrive.
> 
> We have made a concious decision that we do not want to expose streams
> as an awkward not fish not flesh interface, but instead life time hints.
> 
> I see no reason to change from and burden the whole streams complexity
> on other in-kernel callers.

I'm not following the "streams complexity" you talk about. At least the
usecase Kanchan speaks about here is pretty simple for the filesystem -
tagging journal writes with special stream id. I agree that something like
dynamically allocating available stream ids to different purposes is
complex and has uncertain value but this "static stream id for particular
purpose" looks simple and sensible to me and Kanchan has shown significant
performance benefits for some drives. After all you can just think about it
like RWH_WRITE_LIFE_JOURNAL type of hint available for the kernel...

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
