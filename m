Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE411C8CF
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQPPJ3JCyVlqZNd/p9Hm74Vnb6iPQrrAPcGTCfRe4xk=; b=Tq6fvB8JcZ/s2u
	B68aAKLzv9xCXepdTxYIWvSBNJYeu5Svx3+uTs6ZRualEZZAvY+8JKp7lnAFy2NbeIRvYvMycJYyr
	CDxFkaKw72LM4fVAmDDsTxqb1Tlv84ap37YUVDWcUQBX83C8l6JT3HEx+IEoIsX8MLYuGxAx+Fsal
	VOAMPA1LlD20LK8HOZr5XK+itdJD2W7stEhwr5wZIM13fij4qbYJCwR67yb8aJLwOMfFQwpaeUOt1
	iqgAB1U1xO6l2AfqBEpBEjR/0LSZ60TN3q0bmUvCjjAVuJ9LYcbM5iKIpDrXclZOLkfjCOHBFwOiU
	moYLKEBI3472rkFJ2gHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKRT-0003W4-91; Thu, 12 Dec 2019 09:07:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKRO-0003VW-Sg
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:07:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id F209C68B05; Thu, 12 Dec 2019 10:07:17 +0100 (CET)
Date: Thu, 12 Dec 2019 10:07:17 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: fix per feat data len for get_feature
Message-ID: <20191212090717.GA2399@lst.de>
References: <20191210072201.9631-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210072201.9631-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_010723_082836_912C4F6A 
X-CRM114-Status: UNSURE (   4.84  )
X-CRM114-Notice: Please train this message.
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, Amit.Engel@Dell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good except for the double author line:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
