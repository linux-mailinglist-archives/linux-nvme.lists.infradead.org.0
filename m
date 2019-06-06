Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D166F37645
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 16:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zv6l+sBibAULQMZMtm/Zws6idlerV8CbxMvzNbp1eu4=; b=g4TdzQs+uYbseO
	KO1pEZs9ezwiBkDHcuHaei9hfi+ufpAp+35gkPUbREoeBBecFlpVNugvb9iYohxfl476BNUqpCYt7
	0RvocM+L+Xf6iRqhwvW+BtUrcZum+oJMlHN8TkJsqLHpAbg+PqSeeeW2pptFLNNER+TCieV68bzoI
	69YyFCpf3k8pt6weBvQKVXDQasuUXc0vX30H9qKVnaIW7L3+Vp/ahh5Nzda53An3f6lZokjpDcakx
	8b1hh1ODWvfiNlp4jD3yFWK+CEAkVJW9LXBvMn1W0jaQZ6+nikCtPzJ5ICEJX8nZQpdwEi7KU/Ri0
	Y3YOyp8OcqtTZWfzvb1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYtFz-0002PY-Ea; Thu, 06 Jun 2019 14:20:43 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYtFt-0002OQ-Lr
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 14:20:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id B04C568B20; Thu,  6 Jun 2019 16:20:11 +0200 (CEST)
Date: Thu, 6 Jun 2019 16:20:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2 1/1] nvme-rdma: use dynamic dma mapping per command
Message-ID: <20190606142011.GC15112@lst.de>
References: <1559813256-12370-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559813256-12370-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_072037_858374_8B02B587 
X-CRM114-Status: UNSURE (   5.34  )
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
Cc: sagi@grimberg.me, james.r.harris@intel.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, hch@lst.de,
 alex@zadara.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
