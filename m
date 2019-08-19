Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A8491D87
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 09:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFidu4wZhFZ7vtMuSHKq7csA8pW5bD8kCcebnjfDVHU=; b=J3ScadzyDfbVHR
	cR18m+wKewj46ZiZxDQET48pGKL6bJWyy01iEqa3GUgNJa3xVoG00WClBaHdo1fU10dI1F5DkahbA
	/S2Zabl652DL3mf8KEc2R4SHFLf2fhw+gjYbaU/aWnmCuGg0+S1w85de9/XC0fTrHtY2eWKXG6Nvy
	WOQMn/Wjt0/H3dmwf/+hjRm2f/Rh5KOJWOJyLNDYlTMgAGDmF3W5QTrTsiHuVTqul75E0xV4PbJtI
	y9Lc7giAhpRCUIQVfOjWR/knQ7GvLaOH9XNnflg1M37PQC+CGvOesw4KPg71lMf5PWbr1sBU2YI0T
	TzaQuHrhVxqbydhyC5YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbkb-0005Ot-GH; Mon, 19 Aug 2019 07:06:45 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbkK-0005O2-TG
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 07:06:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A510527E06B6;
 Mon, 19 Aug 2019 09:06:24 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id tin4bzQYQocK; Mon, 19 Aug 2019 09:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 315B627E0C50;
 Mon, 19 Aug 2019 09:06:24 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 315B627E0C50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1566198384;
 bh=dRbE1G1rLC8d0xbZihvvSPfRukHmXOgB5B+WDmoRRFg=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=DBiJNvZpojEcci5vbx4InadAxSgnp38scHxWHSetHfn6tOMnNszlXx+6KVL1aEFFq
 +SO0Zhl1RYIXAvaBX1JyEcOXYcqx+ty0IA6RonvgtAccVhvdGc1/OAvy3KcFEtoLzX
 cwuoiWsM0QLqUdA1BxbS+YzRaS5wDOeSzzAHy8eU=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OBDtmaUaefpI; Mon, 19 Aug 2019 09:06:24 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1555C27E06B6;
 Mon, 19 Aug 2019 09:06:24 +0200 (CEST)
Date: Mon, 19 Aug 2019 09:06:23 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20190816131606.GA26191@lst.de>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: allow 64-bit results in passthru commands
Thread-Index: SvpBEuMWC+bTcJ9PbNdGJh/muWTsoA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_000629_249006_06EF275E 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 16 Aug, 2019, at 15:16, Christoph Hellwig hch@lst.de wrote:

> Sorry for not replying to the earlier version, and thanks for doing
> this work.
> 
> I wonder if instead of using our own structure we'd just use
> a full nvme SQE for the input and CQE for that output.  Even if we
> reserve a few fields that means we are ready for any newly used
> field (at least until the SQE/CQE sizes are expanded..).

We could do that, nvme_command and nvme_completion are already UAPI.
On the other hand that would mean not filling out certain fields like
command_id. Can do an approach like this.
> 
> On Fri, Aug 16, 2019 at 11:47:21AM +0200, Marta Rybczynska wrote:
>> It is not possible to get 64-bit results from the passthru commands,
>> what prevents from getting for the Capabilities (CAP) property value.
>> 
>> As a result, it is not possible to implement IOL's NVMe Conformance
>> test 4.3 Case 1 for Fabrics targets [1] (page 123).
> 
> Not that I'm not sure passing through fabrics commands is an all that
> good idea.  But we have pending NVMe TPs that use 64-bit result
> values as well, so this seems like a good idea in general.

I'm not sure how those tests could be implemented otherwise today.
The goal is to send an arbitrary command to the target and the passthru
command is AFAIK the only solution. If we have something better
I'm sure they will be ready to use it.

Regards,
Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
