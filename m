Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B29110C44A
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 08:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMiNduyt9AYazxQLDr4XhJ87e6k6SxlATl6lgLybkWw=; b=lY4ZqW0OW8GExI
	TODmebyx9qiqsm7B2oFsUWZ97c5ZbLJ03BhQEX/9+GBZU4smH1F1Vn5a6sYE+KXcDi+hPJNRoXNNi
	BmoOsLz+xAy2HTMwyeUIdGdEbLj6FhD8FV7VMGoz7NYfaWOnlhQck9crPe4p3mMouodb54UYbgRH0
	TD3KPVfPqko50PFsY42UHFgyKrWh9TIgYk2mBQ+sPzd04q0Yg20pTr0mHWAeo3oZr7aOMIqzHG67G
	l0KTFi7X1nUNyEcflveSMz1CqjXpEG2t9tTmTTNH+ciS2CsQB/FbrdOAWB9pvpcNdkdICCWmqjElW
	ZjTlBPAUHrcLR2HquPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaE8a-0005TY-GK; Thu, 28 Nov 2019 07:22:52 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaE8U-0005TE-L2
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 07:22:47 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 783DC68B05; Thu, 28 Nov 2019 08:22:43 +0100 (CET)
Date: Thu, 28 Nov 2019 08:22:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191128072242.GC20330@lst.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127175824.1929-5-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_232246_839168_C0EB82D9 
X-CRM114-Status: UNSURE (   4.72  )
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 ming.lei@redhat.com, helgaas@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I'd rather open code the loop as that simplifies a few things.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
