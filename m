Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E95311E7ED
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Dec 2019 17:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+I/L49omYkVXfe1/G1O67GP4qjOtVKzDu2oqq5UH7o=; b=chcZ0EZDnjRnPD
	feDAZfimYkI1hgTBJpQw4Ovz1dALT/2pK5B3Jpv1on6RIA0EnYU9dOgR00oimk9HUPkflPBEd+QQT
	ZKJt2aplBwhSFXcDgS/XulllN+kcesTwDJdOFEHxHA9gOZvwdEt93fDgWFWw6JRIvHL+dHpNhmY5z
	xgdqKGlbyWKO89i3ZRKzODDkTQvAJKFs5ZQWwl2NpT1ncd3Veim2ael4SAAuv2hZuDqMKQ9coByoo
	YQkOTZKIlCS4HJOomeCOMSl3vWNOQeJNUx7gkIHBPy++kXn0yzAiHdDFGfrcEaBcovBW4OZR/7dMY
	eh23XwWa2+ISlmzdFMOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifndW-0002px-EB; Fri, 13 Dec 2019 16:17:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifndQ-0002pS-Ia
 for linux-nvme@lists.infradead.org; Fri, 13 Dec 2019 16:17:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so26353wrh.5
 for <linux-nvme@lists.infradead.org>; Fri, 13 Dec 2019 08:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GO1Ji8H/Js49uq5jvluF8f1uJ8lgw5DMt9uzY2WcwaA=;
 b=hvp7cJmNjFEhH0pCeJpd0Hx/x8G+enT5Iav0cLXTo1s1uioGAaHoqh9H1r8BJ9dqf9
 an/9OXWUona9k5VnPw9IgcphbQGZF0qMRLygrAGD2W6JgqKrxPafnMBGVBRxM8uousC3
 BEmPzM+Ygl6mH10UP3SGEbLQ7M52pSF+nGe5Sk954WEhVAj5oGThliY7XJc9osceu4Ww
 hFOtqaOzEIJPUu7woJt6FxhONlQh5RUJX/tQUNCWT1knz7Wa2D0BGBZmnua6d5ArvlOE
 jG2wNK6rp1XsPB9t/1OSXwkrtMqu+pEifXks/fx/FmFq0yq08sICMEyKANpVrbH/3pjP
 g5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GO1Ji8H/Js49uq5jvluF8f1uJ8lgw5DMt9uzY2WcwaA=;
 b=PSjlIckwbdc5SHNm8xcJH6G5c/5rzndqLACF4Cv2l9Rqa6LG7GbI4vCX+9n6pyMboH
 PbM5zZ/VOg9G5hfBCEUGqk0bCkEDEqSkPir/EIxRO/OJBDTdRWP/XD7+osOcb8jCEtTK
 62IZTPC1xDFIeTeG3czmY9XWD59XuF8LotTaswFD6nq6yGigX09TJQriA1mj5XqC6U6k
 z8PjveIs7rWlDeK4gAbHrE43xy4QGLoNfdqqkghnbZES3tDQQxx2DZv07CvsDrcXIqci
 UuMnJ4r1G1N3KjxFOpplZxSVbabf6UaOBa/msdXIfjvIhMYoplv9M5YHPHpK9HnDFnB+
 vorQ==
X-Gm-Message-State: APjAAAUzXm7OFNCDYbjJ8GHll39BKJ+ILpOUgvHoXKztC7YS4euffgq5
 NqYmQyg8WXUp7q1SuFUD6N/lR90WsvJINdfOfYg=
X-Google-Smtp-Source: APXvYqxSvIzYe/4ZIZhTO/7nT463AzhrLCI4f3+ToDRinMEg597CZ3rNiKrUgn40xFx8orlsA1TZz3ysg3eDOuzWMmc=
X-Received: by 2002:a5d:690e:: with SMTP id t14mr13459609wru.65.1576253862873; 
 Fri, 13 Dec 2019 08:17:42 -0800 (PST)
MIME-Version: 1.0
References: <ba698ab21fef46f18a40fcdec2db6d26@tgxml778.toshiba.local>
In-Reply-To: <ba698ab21fef46f18a40fcdec2db6d26@tgxml778.toshiba.local>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 13 Dec 2019 09:17:31 -0700
Message-ID: <CAOSXXT5Bk1=Pb2TNwUeH8+HVF4eRk0R_r2gbtgXur3x4092x+w@mail.gmail.com>
Subject: Re: subsystem reset question (RE: [RFC PATCH 0/5] to add more nvme
 reset functions)
To: tsutomu.owa@kioxia.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_081744_650463_8AC0D082 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 6:22 PM <tsutomu.owa@kioxia.com> wrote:
> BTW, I have a question regarding subsystem reset which is almost identical with the following post.
> http://lists.infradead.org/pipermail/linux-nvme/2016-October/006609.html
>
> I've tested 4.19.87 and 5.4.1 kernel with a few nvme devices and got the same result;
> the device disappears after subsystem-reset.  It requires nvme remove and rescan via sysfs to recover.
>
> I suppose that this is an expected behavior since the result looks same, but would like to
> make sure that it is.

NVM Subsystem Reset has the device disable it's link, so the affected
slot needs hotplug support in order to react to the surprise link down
and subsequent link active.

It's possible we could do something smarter for the controller path that
the driver received the NSSR request, but that doesn't really help for
other paths in the same subsystem, which may be connected to different
hosts.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
