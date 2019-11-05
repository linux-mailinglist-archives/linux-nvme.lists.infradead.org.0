Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE2F04A0
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 19:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mjExiygO13pbAHoPdBzcOR5p0AMVdIqRny6vluN4kE=; b=kmuOmZl/EpDyRE
	d6oy8TPLQz+OBxX6fFO0e/qry+vUYnoRoUYwFBQ3SEVFbRnpMwmeHEHUe6avcjv1Km9SApVjuvf/M
	sUb9wA6LUgvTSKjQCm8iSsBxEmi+pKe5m7MRr8sXS56B7bfKSsIGZ9IbmnQqB3l3G0JsQLEKgAseY
	7fLUkEOIo4sVwSX84PTWGZZawoy5PV7xYmvLiIJMHbh+K/ovBjAgZQRUEMp6y6y2kOqvpJ2E6FWtS
	EhqN0MDfDhonv0x3khOr2G3BhuXWxecGZ4SDR6ySE37IgDz2AHQbxpcT0YN7CH2KqNhGHYIBD3Mp7
	KGuOoDINr05OaLeowvvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS38G-0000or-2F; Tue, 05 Nov 2019 18:00:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS388-0000o1-Oa
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 18:00:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DD28468B05; Tue,  5 Nov 2019 19:00:34 +0100 (CET)
Date: Tue, 5 Nov 2019 19:00:34 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 11/15] nvmet: Introduce nvmet_rw_prot_len and
 nvmet_ns_has_pi
Message-ID: <20191105180034.GI18972@lst.de>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-13-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105162026.183901-13-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_100036_960057_0BB5C37C 
X-CRM114-Status: UNSURE (   5.21  )
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

Looks fine, but should be folded into the main patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
