Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F739180460
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 18:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eoFvQYdh1ywnKcTmV3+7af+0aTJO+JoGGeEJpEmT/I=; b=uG7EQ46YyCv8BY
	yQzWVmT1RQwT/iDuX+fdcsW9Pw50EMBzQL+v/GnT9dY1q5Y/p2tfopd3ymrQ2zkz+rQ0CxBWbZaZS
	PbmcqTmBBNawBuNkNBtcgVhMK5jB/ccF28xpBEaI7X8EoIohaJerS090407g9ag5U/hSB1MUz/XPB
	kVza6QAsLcX8Z/erih8XvAW8u0TGdusqWufBcLGV/O/0k2hdaxUvhIig5+7qnXGjZP90HL7oOcXhS
	I4Igy9VC9971A+n0F5df3uEaZ7YR2iLjB51PFygpselfjFK7AmYFsFf3VlYKPCD/HS7JdeiKopBOG
	G6zqVGsijlcVZqiOV7iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiMh-0007Rq-Rs; Tue, 10 Mar 2020 17:08:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jBiMc-0007Rg-F3; Tue, 10 Mar 2020 17:08:18 +0000
Date: Tue, 10 Mar 2020 10:08:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: I/O performance with block sizes > 128k
Message-ID: <20200310170818.GA28008@infradead.org>
References: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 02:49:10PM -0700, Bijan Mottahedeh wrote:
> I'm seeing a sizeable drop in perf with polled fio tests for block sizes >
> 128k:

Try using a controller with SGL support.  NVMe PRP unfortunately are
a completely brain dead scheme once you use non-tiny I/O sizes (
and actually really painful even for those for other reasons).

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
