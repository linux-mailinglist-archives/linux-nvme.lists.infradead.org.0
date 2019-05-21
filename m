Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BFD24A5B
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 10:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwNUqFj00o6y+fPCXA1ZDdEiGf/0CqKra4kILlNNCG8=; b=cUp6qH+Z6qTd0n
	u/y63PGE7u6DdLQnwH0G20AyrENQkjRPx9ikdfGL9ai0pO5/ECDb2Z9B4iFYwbi6CqdRIN8yYnzh1
	9lxmXUbh3VcDlrpHyhlBRThOY+GWTSga9uOUoqLuhGO1aoL+tF+E6PAbOp0iyMC119oy7n28veB1y
	cDZKJKHQbrIq60MRVW2tdTeKfFCZnuzAfvjP+P2eojrwon0NR+JwyqRESN2plCYPYNpOMXgMXnB/t
	vcSvojhwuDjXDETDCKKNbHw0ek/oVFVL1csuQHh5Tnqne5LpBDKXwhy5CRIj0h9DLOUSOUpFjF74i
	tbdu81pmYQ3SZx6zZOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT08g-0005jK-VG; Tue, 21 May 2019 08:28:50 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hT08c-0005iu-QJ; Tue, 21 May 2019 08:28:46 +0000
Date: Tue, 21 May 2019 01:28:46 -0700
From: 'Christoph Hellwig' <hch@infradead.org>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Message-ID: <20190521082846.GA11024@infradead.org>
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
 <20190510170249.GA26907@infradead.org>
 <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
 <20190520142719.GA15705@infradead.org>
 <20190521082528.GA17709@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521082528.GA17709@quack2.suse.cz>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: linux-block@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 kanchan <joshi.k@samsung.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, 'Christoph Hellwig' <hch@infradead.org>,
 anshul@samsung.com, linux-fsdevel@vger.kernel.org, prakash.v@samsung.com,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 10:25:28AM +0200, Jan Kara wrote:
> performance benefits for some drives. After all you can just think about it
> like RWH_WRITE_LIFE_JOURNAL type of hint available for the kernel...

Except that it actuallys adds a parallel insfrastructure.  A
RWH_WRITE_LIFE_JOURNAL would be much more palatable, but someone needs
to explain how that is:

 a) different from RWH_WRITE_LIFE_SHORT
 b) would not apply to a log/journal maintained in userspace that works
    exactly the same

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
