Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B591853A
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBUvKN1abCN8q/84ZRMEG6gSWOCkqAUGZgfaLfg1Db4=; b=or3yjMkPS7JBN3
	B6EVDDWtws5fE4zVqX+c6DQsOx1qD/tp+lSrsH7nA93T38HAvS7uzCt2VOrPH/oZZ46jd9jRPlYJf
	J7Bm+sEc9LDrLmEEClwC0QHyUVIX9+VHZ5Z6KRj6cYJsOUxCitoeCJPLjwuGilP3a48cl2GzL+Kju
	YZ1OjRQtZMWcQqxI8QK+hif2ClZjimK2wVjg0x4bcmrI7CcZsTbiUwCT/slj0A7byARgEu6ZS7Nlo
	eKU1vcZcGN18o519858pG9QrGwWL3J+TzpojtZjHrak+VdkBjZXpBdWZPA6xXKZDUqUGKWREZPcsk
	qtqT7rsVfnRVqGBVLLoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcLf-0001E0-Bu; Thu, 09 May 2019 06:16:07 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcLR-0001DK-I2
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:15:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id d8so655637lfb.8
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 23:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pjL8S2b1N9RGB5Ej3tVGHssLMN/kO9+k5oaDAxobLrw=;
 b=PNlaPYua3Padp4UXiYdn7sRzUEoyqaJEnymtiHO5jiT8Kr4Fcfe0TSy2Pbf2SjXc4V
 MLeDiDMc8hUCnwUVyt78Fz1K+CQJJUtGfN7qeciKijkQwqY3KnO3NnskmHcY8TmpnD5T
 w+vTTP8XhwR+mTXQULq3NeIYa0jBu3NPrz+C+87ALra7ZBjS2mKaAQKpCr92cwNyHsnx
 Axoavui20MvVCZkBJH8kkV0NhU7ZaVqTd2puEK3OtGfniQu756j8BjQO7Dkrpgog1F81
 xSnqVLW6dnkv96jkReJ1xA1GdoaBBdIJr7iE9gobNTuunjL0sZX07sImUQ49CpzWKzFF
 k/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pjL8S2b1N9RGB5Ej3tVGHssLMN/kO9+k5oaDAxobLrw=;
 b=WuxdV+U9pURHcsEEon0L/Fg85uJTeaQ7v4fWUrajqyExwgu1LuitPrHe+xyJnY0UCq
 ECRwgzsMgShrnHYxhKRLA8DKCaD4L41ciiZClK125uT8Fbf8oKYlYRocYK+gzZXgyo5M
 6lltkRy0XaDPjuHuDVM+o+NDsbI3rDWYSwzPwRR5aLSoNpALQyx7NfhsqrjxtsW4/Tl6
 hC0jFOWr/ZuyVsbsXY9We8+Yp38/v1Vf5ksOT0KJoLGzBZ9dyGUkI9KwyrAP87iry8sb
 UiG+/R7hXo/rVz9oFudx9O2ufk2awQIhgEtm8fCuGFhGumqeKgBI9uy1ESPmwTC/pg4V
 c7IA==
X-Gm-Message-State: APjAAAVRP18ODoUEkvJcpQKVqoC9nX/rg2xnOyc80rpzjvE5cOnR+qdC
 2VZnJLV/hxuLoYECrwWui5YgIa9n3Dj+4j+I6Fo=
X-Google-Smtp-Source: APXvYqxMLmq4PiNfx2RlO492eAwLG0dIA9iTL4CjA/V6Ux8VFdsFh0aOY1se89IZfU+hxOcsTAQ1Em3hIHy4jx3gzuk=
X-Received: by 2002:a19:4bc5:: with SMTP id y188mr1354149lfa.24.1557382551452; 
 Wed, 08 May 2019 23:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
 <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <c86fe09e-9964-123a-bc17-e9b9e6a80856@gmail.com>
 <SN6PR04MB45273CEE5FE1DDF38677980F86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <CAA7jztfU+AdUHp5xo8ssjgvXiBFBXJt0PyQTNA8VQU-T-SpKQA@mail.gmail.com>
 <SN6PR04MB4527510BF05DCBF27E0B6D2F86330@SN6PR04MB4527.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB4527510BF05DCBF27E0B6D2F86330@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Date: Thu, 9 May 2019 15:15:39 +0900
Message-ID: <CAA7jztcSAOTrPkiN+bDW5i7E1E0MA+xhU=6iZ-nEUy1YT2c1AQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_231554_034010_CB28828C 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Keith Busch <keith.busch@intel.com>, Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Isn't this unsigned ? as pointed out by Keith ?
>
> $ cat a.c
> int main(void)
> {
>         return -1;
> }
> $ gcc a.c -o a
> $ ./a
> $ echo $?
> 255
>
> May be I'm missing something here ?

I meant that the program returns in a signed value, but it's going to be
parsed in 8bits which is unix style, I think.  Sorry for being unclear.
That's not enough to hold nvme status value at all.

> >
> > If you have any idea about it, Please let me know.  By the way, I really do
> > agree with what you mentioned about the return value.  If it's possible,
> > I would like to too :)
>
> How about we instead of returning the NVMe Status we map the NVMe Status
> of the program to the error code and in-turn return that error code ?
>
> The above is true only when command is successfully submitted from the
> program i.e. no errno is set by any library calls and failed in the
> completion queue entry with NVMe Status != NVME_SC_SUCCESS.
>
> For your reference In kernel we already do this detailed mapping where :-
>
> 1. Please refer to the drivers/nvme/target/core.c file where we map the
> errno_to_nvme_status(), the reverse mapping of that function can be done
> with nvme_status_to_errno(). Of course you will have to add more cases
> and do in-detail reverse error mapping from NVMe status to errno and
> return that errno.
> 2. nvme_error_status() we map NVMe Status to block layer status.
> 3. blk_status_to_errno() we map the block layer status to the errno.
>
> With the help of 1, 2 and 3 you can reverse map the NVMe Status to errno
> and add that mapper function for nvme-cli which will be consistent with
> the kernel NVMe status to errno mapping.
>
> Now you might find some cases where you cannot map all the status codes
> to errno and for those default cases you may end up using something like
> EIO, this is still better way than having to return 0.

Got your point. To make this discussion short, I think we need to make it
in nvme-cli first.  Let me have a discussion on the following link:
https://github.com/linux-nvme/nvme-cli/pull/492

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
