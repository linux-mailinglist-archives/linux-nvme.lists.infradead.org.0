Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0578615845B
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Feb 2020 21:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsTV8pgMpJKE2rZogUehs3AIIPd4BiBB2hI6FtxGDDY=; b=AsoN1pEgjC6Dvp
	LEJ58U74JLbkD5H9TTsVSzLGVoMygtCGWMII/T6mIJyPCpDEmNpdiC+05im+Xkdqg4UdbTF86ZTHK
	riZfXqX73qW6ZBsSbHk3DQAfxDayszx0ND/kDn5us0GWJZVCaMLgso6kIDjKeHqWros4NWzgM2M5H
	EMoVRhqHd+udZfdDnfunhjdLn434K12bKqo0dbf4gwf5Pn+pT0fc4x+NMNd68E8Q5mfwKlUqsi5zU
	H1O8cz5Q1aMq+O7YnexOFuNeCkd7xthfjH2uRovR1/tEsT+57WogUgxqVDFms/dFYelsXo/4F3Lhp
	V7MCwMubcQwIAsiwONkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Fto-00071U-2m; Mon, 10 Feb 2020 20:43:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ftk-00070y-62
 for linux-nvme@lists.infradead.org; Mon, 10 Feb 2020 20:43:17 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30B81214DB;
 Mon, 10 Feb 2020 20:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581367395;
 bh=KwCHrWA0wev45KvANN3aYLit9yFcWT8lnBqLoNfSfto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fka3jkqKrIkS/psSk5OgilmAPgjyLDfVTYwfRIQHQT3TyEoMXHlEFQ64fhkC/1+hb
 cjtrxqEWWbNkjWg+w0dXmwniLwJ7anlBdzRaZN27CFODTA/ZjtWfczVjkYt2vnS4VV
 YD1/rdBYN8xbNKNRpg1bZF7kuRkjp59Gj2SSKe7A=
Date: Mon, 10 Feb 2020 12:43:13 -0800
From: Keith Busch <kbusch@kernel.org>
To: Tim Walker <tim.t.walker@seagate.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200210204313.GA3736@dhcp-10-100-145-180.wdl.wdc.com>
References: <CANo=J14resJ4U1nufoiDq+ULd0k-orRCsYah8Dve-y8uCjA62Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANo=J14resJ4U1nufoiDq+ULd0k-orRCsYah8Dve-y8uCjA62Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_124316_246041_A7F7636E 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi <linux-scsi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 02:20:10PM -0500, Tim Walker wrote:
> -What Linux storage stack assumptions do we need to be aware of as we
> develop these devices with drastically different performance
> characteristics than traditional NAND? For example, what schedular or
> device driver level changes will be needed to integrate NVMe HDDs?

Right now the nvme driver unconditionally sets QUEUE_FLAG_NONROT
(non-rational, i.e. ssd), on all nvme namespace's request_queue flags. We
need the specification to define a capability bit or field associated
with the namespace to tell the driver otherwise, then we can propogate
that information up to the block layer.

Even without that, an otherwise spec compliant HDD should function as an
nvme device with existing software, but I would be interested to hear
additional ideas or feature gaps with other protocols that should be
considered in order to make an nvme hdd work well.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
