Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF69B125916
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Dec 2019 02:11:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzTnI6Fvh/H0dQvkVc5eiQJfXBKCLCqaWqOhyMdbDYM=; b=cuPG1IPIgBwWrG
	LdD9ubpDlKFYan8TqCKrW1F+Sx+NsJUm7BMEHWTC9Wsa2CzLikh+1uhSrZefSbIDwYqhsxZVoE/Hn
	qUyg3KLhEQYktyrYjd9FYijlH0m0a6JL48vtM8wSWjPiU+zA1EQpnAt/emQZl+fqf+txBZQ1ad7PQ
	5wG8rr1zb8qHy21w5cqKevxCEmMHrbmZpCGrZaYSFnmh3K01gOYGLVWlwe2pbvFAvQGK9NDDGYblB
	y77ZL8p3CKpuhZnlAOc67DwgHHlf41wvF0E5UV76M9Rxj/IfCXLKaRUGFlmcipanPFRgBWUVF1zDj
	QSXxXI36BrGUAoxekGvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihkLH-0005oa-4u; Thu, 19 Dec 2019 01:11:03 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihkLC-0005o8-01
 for linux-nvme@lists.infradead.org; Thu, 19 Dec 2019 01:10:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576717855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zVs40XjxIpgo3y5QqbCT3OAOq1BaUVifcJMhXWQl9I0=;
 b=eNdl4+Luyz1bua10FOGZ5j1Di84QQK066ZTeB2QVAb8LyXmZTrOBrLUvy1zJSOtiu75HQQ
 I8IFfHvESLF4XdXMUBNPEpirQmJklvqsCZzPV+9UssqszVozaTimzjq0W6fOV4E1oBOtYr
 0qgs/jBWbkl276cUOi8dDdWi053ZE6s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-HYFw9gXPPh6kt1NIuJAYeg-1; Wed, 18 Dec 2019 20:10:50 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 308CA801E6C;
 Thu, 19 Dec 2019 01:10:49 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 46B3C620BE;
 Thu, 19 Dec 2019 01:10:42 +0000 (UTC)
Date: Thu, 19 Dec 2019 09:10:38 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 3/4] nvme/pci: Remove use_threaded_interrupts
Message-ID: <20191219011038.GA5710@ming.t460p>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-4-kbusch@kernel.org>
 <20191212091433.GD2399@lst.de> <20191218072946.GA23166@ming.t460p>
 <20191218155050.GA6625@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191218155050.GA6625@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: HYFw9gXPPh6kt1NIuJAYeg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_171058_117600_6EDD0167 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bigeasy@linutronix.de, tglx@linutronix.de, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 12:50:50AM +0900, Keith Busch wrote:
> On Wed, Dec 18, 2019 at 03:29:46PM +0800, Ming Lei wrote:
> > On Thu, Dec 12, 2019 at 10:14:33AM +0100, Christoph Hellwig wrote:
> > > On Tue, Dec 10, 2019 at 02:56:21AM +0900, Keith Busch wrote:
> > > > The nvme threaded interrupt handling provides quick completions for
> > > > latency sensitive workloads, and threaded handlers for more IOPS intensive
> > > > ones. Remove the use_threaded_interrupts nvme module parameter since
> > > > leaving it disabled should not be providing a benefit.
> > > 
> > > I think we need some careful benchmarking and numbers to justify the
> > > switch.
> > 
> > The patch can fix CPU lockup on Azure's NVMe, however, IOPS drops to
> > ~600K from 3M+.
> 
> Compared to current mainline, or is that 3M+ with the poll completions
> from submission?

3M+ can be reached in mainline without poll completions from submission,
which only improves IOPS in single fio job test.

This one is multi-job & multi-drive test:

fio --bs=4k --ioengine=libaio --iodepth=32 --filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/dev/nvme4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev/nvme9n1 --direct=1 --runtime=400 --numjobs=80 --rw=randread --name=test --group_reporting --gtod_reduce=1


Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
