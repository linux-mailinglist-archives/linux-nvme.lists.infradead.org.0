Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE206E0B1
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 07:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9UPg4EcRpX1QYUlQclT5MOmp2yRZBgWX9RZIRRjZDo=; b=p1pD2ot8yaDIHR
	LJmgZpVE2Q1rlANFMqcXapXYD7+ziN7UlBCrTLfbNP07tno2RRT2eQ/TKXTYi/nq05qnEQmlqwxBI
	unZ6xkhFvaGwFCq6uCaeAG7453ga/SDB8nJn/8L/xWL/Rz69iiPbyvToH2BCY7nqGwNakmone/PNS
	AxGp4tpSW/r0AA9BQSnGPFpq/1p7JJN6K80JfT63jz56o97iZosnB4xN+Ph1OwSqPu4I3e3FcuaqA
	qOkFUA2SNCkxNGudXolJTAN1BrOvdNe/WE24FCVP3KKR8WHG9xHa29cbHNT2Nn1NqduYwH7ZnD52s
	BhYJ8LSFR6FoFP9oNHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoLiB-0004fZ-Kw; Fri, 19 Jul 2019 05:45:44 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoLi4-0004en-FS
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 05:45:37 +0000
Received: by mail-yb1-xb43.google.com with SMTP id q5so115015ybp.1
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 22:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yk2+4Vq4KFG4mMs/65lsgjXt1lwrBOm3DDIfsr8Tq+4=;
 b=tB61YPUUXcLoU2JKUJmP9kqM/evG6BLIRj5/WW6E4NGFfWnUCDDpcaOy4OcgYkBn4d
 DK76LahHfJhT4gE/zTX8IvVpltuZtj0c+rWQUU6RzJL7TjpS9i0m1g9tpZHsVnt9pWbp
 0ZNyKnP6zn3V1yM1uU3U3WvH1Lr1r8+F9mqkkXP6sBe1Jz37gomlX2wpt/H30YKn2ck5
 MNAG8jyw8tmWimrPDBeqgBHZwUzfD5EKUZT1PrSfAvVMipzm6Gu5pAJfDmwyBY6lB1XA
 L+v49P/zSEUU9Jfvg0jWGWwTwxtnYevcvmjt1pbkb9hv0Maht83WeNvLRm4E/yS6Nn6c
 jlug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yk2+4Vq4KFG4mMs/65lsgjXt1lwrBOm3DDIfsr8Tq+4=;
 b=atCUmALw0XjjLOaT6KpxajtROifWswW0S1y2YGA3e5pFhiMMDIaSK2nZRy2V07InK/
 6bQQMvScrMQ06J9+1buVXh5vWertkoVerkFZ2EnFdBLGBNenG5yr5eQfOctgsaSMo39k
 G1fSg/2fFSOTLPxyIxjfVAlrxbjgGPSsyYVr9twAKNIp89V/6YX8ygP6bkJRYjTFCCTw
 l4p2sLQfAFUsXuL/CEMdMiz6R0AJQCpdyEecsWFBQ2Hhg1VXomV7gI62dR6y2qT+fhsk
 yaz5fSuxQcWR4/eLWGOtjfpISMWltkiMW8PhfhNyu7SuTXA8DV04UmpASK5fJKFPDdrw
 3D3A==
X-Gm-Message-State: APjAAAU9BBFlIPz9z6klrSPU2QrhmzesVBecFH0OB8lk0QVdTgjK5dC+
 2QvJU8gODrHvoKvJBpXC9/cQpY6+/jMdBHKQ9rU=
X-Google-Smtp-Source: APXvYqzcfqtZ4d0w1mMAJJOcUgfPCaVC1MuNb1NA/3sDzRfZNs9FhBPeMZD2vTgyESc5G1M9T0VmGn9xvpIULvmk52o=
X-Received: by 2002:a25:b9c8:: with SMTP id y8mr7219655ybj.484.1563515131921; 
 Thu, 18 Jul 2019 22:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
In-Reply-To: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
From: Balbir Singh <bsingharora@gmail.com>
Date: Fri, 19 Jul 2019 15:45:20 +1000
Message-ID: <CAKTCnzm25sa_6p=U-FAL9dEPdd13OJ446hqhZfHPn5zrYmAKRg@mail.gmail.com>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_224536_544521_8C709FB6 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bsingharora[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 3:31 PM Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> From 8dcba2ef5b1466b023b88b4eca463b30de78d9eb Mon Sep 17 00:00:00 2001
> From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Date: Fri, 19 Jul 2019 15:03:06 +1000
> Subject:
>
> Another issue with the Apple T2 based 2018 controllers seem to be
> that they blow up (and shut the machine down) if there's a tag
> collision between the IO queue and the Admin queue.
>
> My suspicion is that they use our tags for their internal tracking
> and don't mix them with the queue id. They also seem to not like
> when tags go beyond the IO queue depth, ie 128 tags.
>
> This adds a quirk that marks tags 0..31 of the IO queue reserved
>
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---

Reviewed-by: Balbir Singh <bsingharora@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
