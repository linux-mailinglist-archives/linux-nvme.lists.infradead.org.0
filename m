Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A12E9C144
	for <lists+linux-nvme@lfdr.de>; Sun, 25 Aug 2019 03:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrff9dTTOO2nhObGh8JgAz+RzY1hnPwj4TidONNuYNs=; b=utQ2IGcTLMxxLD
	4Yn5rop0iyHY51Cl+uRr57QIhbzijLe/Ksm8928tdo3P0RsXAilgYCLJEQ9HDrhvK0Dzxb5j/7Dxm
	r8RxAsD5/vgSx6WxoKpGt6OOhavKCTokSEFkEPw0YDc9pG28qMbbz1b87ygvKLnRBaQ6z2c04+vLY
	K/DjotLP7KWhKHfImDbkFfJft1dQ9sA7K0kjzz8nDTxQTDKUt2rzMgcdtj0yXYx3+1e71N30tEXr5
	isrxJYpSvxIDr1yv6FgdJMft2NP05zDEU4lj5AfWKE54VBalIxSC8OYkUjCjoEeMgKn/+T7jE3mtf
	IJKXBoalXcgVQUiSJmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1hPF-0005qy-GY; Sun, 25 Aug 2019 01:33:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1hP5-0005qB-2Y
 for linux-nvme@lists.infradead.org; Sun, 25 Aug 2019 01:33:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5B67E68AEF; Sun, 25 Aug 2019 03:33:08 +0200 (CEST)
Date: Sun, 25 Aug 2019 03:33:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v8 6/7] block_dev: split disk size check out of
 revalidate_disk
Message-ID: <20190825013308.GB23887@lst.de>
References: <20190823055442.19148-1-sagi@grimberg.me>
 <20190823055442.19148-7-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823055442.19148-7-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_183311_264453_B36E7BA6 
X-CRM114-Status: UNSURE (   9.33  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 10:54:41PM -0700, Sagi Grimberg wrote:
> Allow callers to call separately the ->revalidate_disk()
> callout and the disk size change check separately. This
> will help the caller to take action based on the return
> status of ->revalidate_disk() and run the disk size check
> afterwards.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
