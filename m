Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F963F8159
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 21:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5w0/WcizVevvTv1tpnmDkLQbB+HvnTVxNhx92wnzWI=; b=menPzIoi9g8Uq8
	X7T92qaLZjxxssbSOGX0R1IIMf//rIXP75BrwaKj8TAZZMUz2BXOCL8afcFMhwOD6P1qV6tMP59m4
	J26UF0LM8+fujkSD0zq4U5sqtwjbC+vE6cUDuPwFH/04R+2HTzIApBtInmDKza484hGKVlONNnG0t
	WleV18HGsPIwX806Qsw2jaHncOWoNuOyZlSdih1eLNsuMrZbDjjsOvGZU7XVIXlceY4Sf8VDdUQSf
	9ytQMmQGnjr2SOTXujgqN4uDJLd71mGmze1QDJ19djHC3aDhmr/H3La52dkHvYkKbQ2F4quGtecvT
	+cNBTW8LrZYFcmEqXJow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGRb-0004fD-TK; Mon, 11 Nov 2019 20:37:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGRW-0004eP-LE; Mon, 11 Nov 2019 20:37:48 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 45C7368B05; Mon, 11 Nov 2019 21:37:43 +0100 (CET)
Date: Mon, 11 Nov 2019 21:37:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH RFC] PCI: endpoint: Add NVMe endpoint function driver
Message-ID: <20191111203743.GA25876@lst.de>
References: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_123746_841597_D96DF7AF 
X-CRM114-Status: UNSURE (   6.24  )
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
Cc: lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, kishon@ti.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, bhelgaas@google.com, linux-riscv@lists.infradead.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 09:38:09AM -0800, Alan Mikhak wrote:
> A design goal is to not modify the Linux NVMe target driver
> at all.

As I told you before that is not a "goal" but a fundamental mistake and
against the design philosophy of all major Linux subsystems.  Please fix
your series to move all command parsing to the code based on flags for
fabrics vs PCIe in the few places where they significantly differ.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
