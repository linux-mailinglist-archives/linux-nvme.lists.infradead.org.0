Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B32F049C
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 19:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgVXsRM8nyq8ICljSRkYNbIhlxVgL9zei0pShmBmFlY=; b=P72Qzh3uTsOY04
	ACs2S8NDGSBv+nHBUxYtpZIhVL1/tsfd+CTm9/CSbx911Psi76uQ5CPf5kGWJxWSmwH7j1QKerTIy
	7DBqWGaRgc8nauhztMgbkmOlYoZPLMlzCNsk6hX/2ptl0mfkeC5VmjD5d7CjCfdgUuxii73mQuO6O
	ugAXtTU/WpW4HYCBncm4aijv2U7hhDg1I7VJUFc5xX2mUK46KvAxwFRBiBKdPR7fZYdIrQqHQ6kGl
	e6bmbRCrHQ6VgslQFWakhPKfHR2hIb/wWJJvxhhEWSSCf9ky24YdbDkRP4IeJ9aCZe1EXtZjTKHl/
	I62Na9Vp6r851ujp92Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS37Z-0007fi-3E; Tue, 05 Nov 2019 18:00:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS37R-0007ea-6l
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 17:59:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5744868AFE; Tue,  5 Nov 2019 18:59:51 +0100 (CET)
Date: Tue, 5 Nov 2019 18:59:51 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 09/15] nvmet: Rename nvmet_rw_len to nvmet_rw_data_len
Message-ID: <20191105175951.GG18972@lst.de>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-11-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105162026.183901-11-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_095953_407476_CA349FF8 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, idanb@mellanox.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
