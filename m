Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E20A5A48
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 17:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usOs2jFN89zu5ErxpLsN4PkEnay9+5v98Oodfp+Vj+8=; b=ZcoflCk3Su4KBv
	zzFFpugpo+NA4oDu9728uK7yvCMilER8LScRNBfn7/RN6m8TPICje+NiwY+YBqZZpYLnVukhaUQwt
	PUYjAnRm6GE/a6VEuIKrH4dF4wvUsi323SaH0BL1aDt4YTyCbyg4z3SIJX3ZwhmYtzRVeOnHg0Is+
	X89ivS5yDY7+pJ4Mg5KBt/x36wHI5IwQ0ovtQr8brE10ComgXe1NDCEQJo2oiL1jqiqgw/Gq6oZYO
	9BtYKkb5DzT68qibCvadNJheT4HjgxB431+3T9W920jNWZVj4aPhfYvEYKmYT4ouDTUOwjEbvV80j
	cAhsMrU+eKkCO9KsPnOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4o1r-0000gy-GS; Mon, 02 Sep 2019 15:14:03 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4o1k-0000gZ-HB
 for linux-nvme@lists.infradead.org; Mon, 02 Sep 2019 15:13:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 11FBA68AFE; Mon,  2 Sep 2019 17:13:49 +0200 (CEST)
Date: Mon, 2 Sep 2019 17:13:48 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/3] nvme: introduce nvme_finish_cmd function
Message-ID: <20190902151348.GA5034@lst.de>
References: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_081356_723835_1D1CCC19 
X-CRM114-Status: UNSURE (   9.82  )
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
Cc: sagi@grimberg.me, martin.petersen@oracle.com, israelr@mellanox.com,
 james.smart@broadcom.com, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 06:01:00PM +0300, Max Gurtovoy wrote:
> This function should be called by every transport during complete callback
> upon successful submission of the request. Thus, in case of a failure in
> command submission and in case nvme_setup_cmd was called, the transport
> should call nvme_cleanup_cmd in the error flow to avoid resource leakage.
> Add this logic to all the underlaying transports.

The idea looks good, but I'm a little worried about the confusion
the two functions create.  I remember we once had the idea of lifting
the pi_type into the core block layer, in which case we could do
the t10_pi_complete call inside blk_mq_end_request instead of having
drivers deal with it.  Same for the t10_pi_prepare call on the
submissions side.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
