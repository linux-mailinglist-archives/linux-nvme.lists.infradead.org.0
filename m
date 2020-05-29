Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C21D1E7E8E
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 15:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ml8jXKZMBUAxH5dsqf4zPXtl71wFAc3zhUx7UtGmRYA=; b=W7a41UWEMsn6Cu
	jvhsfkQxeJ78ATIyVaobAN+G4aFPWhMLqWd62AEYMEyMZJBIKpg3m/M8WKXY8P7Q5LHCZ7gsbxUa9
	qUeBnyOt9VIYyVvTo+ru87SvU8RA98WLJOE/SCUR43UqbpZug4qmRfLW3S9BAJoF/vk7Jkcvs+Pjo
	E3ordR77iWqdA8uusLwzhbEUTTUXSUWiW8HWDnw0fsz3A5Sb/UmDyl+ytKV3gLE6QGTYdV5UH7oZh
	X+wqLUtiwHHP4c915vrD6enHpJrUZJdeJXL4hMOrv1jV3S/f53vHpc3KNAZJc+4v2yLFVs82g0k6F
	bYud+ne6l81QHEiqvV4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeext-0007TU-0i; Fri, 29 May 2020 13:22:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeexo-0007T5-Ru
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 13:22:22 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3CC520C09;
 Fri, 29 May 2020 13:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590758540;
 bh=UVQdnteZ2cgBRyB/3h3rC0V4k7ngf/QHjY3iyUE0UFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tzh9x24hfsAol8syt4bhnfX8gedUsa7SauSGWr1+lo6Qp63Ctpb9ZimY8XTBSXBRW
 FiyEHnnXQc1/jgWSEz8/uG8W+YmrG9eYG9OwF87IzeRwhwns/ovYjzE3+IZae6yOzJ
 go4ykP6hyH7u26AOWGNdBxSRKZb20K9DAzaRd+1c=
Date: Fri, 29 May 2020 06:22:17 -0700
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <tom.leiming@gmail.com>
Subject: Re: [PATCHv3 2/2] nvme: cancel requests for real
Message-ID: <20200529132217.GB3506625@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200528153441.3501777-1-kbusch@kernel.org>
 <20200528153441.3501777-2-kbusch@kernel.org>
 <68629453-d776-59e5-cdc9-8681eb2bab37@oracle.com>
 <20200528191118.GB3504306@dhcp-10-100-145-180.wdl.wdc.com>
 <20200528191443.GA3504350@dhcp-10-100-145-180.wdl.wdc.com>
 <f9cbedc9-88b2-acc8-5b95-f1c247ab1525@oracle.com>
 <CACVXFVOTQ7HLV5DCP1XezPqha13LfUrj-fZE8++_BAoTvtPWMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACVXFVOTQ7HLV5DCP1XezPqha13LfUrj-fZE8++_BAoTvtPWMA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_062220_927852_20DB07B7 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 linux-block <linux-block@vger.kernel.org>,
 Alan Adamson <alan.adamson@oracle.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 11:39:46AM +0800, Ming Lei wrote:
> On Fri, May 29, 2020 at 4:19 AM Alan Adamson <alan.adamson@oracle.com> wrote:
> That said NVMe's
> error handling becomes better after applying the patchs of '[PATCH
> 0/3] blk-mq/nvme: improve
> nvme-pci reset handler'.

I think that's a bit debatable. Alan is synthesizing a truly broken
controller. The current code will abandon this controller after about 30
seconds. Your series will reset that broken controller indefinitely.
Which of those options is better?

I think degrading to an admin-only mode at some point would be preferable.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
