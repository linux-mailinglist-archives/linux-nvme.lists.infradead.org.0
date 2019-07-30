Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E579DC4
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nh3bqkL3hb2og2T21qci/A97zJtSTm+F8s1Y+mR2LCU=; b=dzNbUVHoaIsXw4
	hIDj2inCt64kLEN0kjx64LtgG69rdC4+3FEFQO+WQ7Dgze9stc6zRkm68I5voLILaXo3oxVsGJw1Q
	/bho8gHnQvtaBtp+cY8Ia60g4U4Q8/ACGuqfM+toH3PMh6cNXOJIG0e3foGx20NRwe8S5PBdJ6m2K
	q22cMcGAAXTO50rvPT91Eqd1oY8n58drDwb9QVx6c6/SHy1aeYuZH4bzjEAHUpEgCAIU8ubiXGQGj
	ZvVG1MhtWvx8w11/CxZNBToHen2ft0FN+dWLRj4JmD3GMCudwDa3C6s6or9PpSCbCFDvr+w/2mIka
	TopXqXFfRgmD0oPZ/WKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGfF-0002TK-Lm; Tue, 30 Jul 2019 01:10:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGf7-0002T0-Pn
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:10:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so10649008wrt.6
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+8Xa+S9jjxAX9/w1VQAWgOyHnKcfSE22W6k0u42Ch/M=;
 b=WmgVfnXC91Agc65L3wONHlvGJ8V4U8RsZC7zLHNPaJZiHozmrVjG+eH3sYQU0SqmXc
 KIBHEqLDDwtq7JkOzCazeqCGUdiyRQzxl3eEJRisb19+QRS5jT7NeuUJNpTQuEBs9VG0
 5oi4vBnYB7D0ZqtBBYlRnEloFhuQjMlF18UVxJ552vRqCtTYmZm3B+Vj5SlAdSTj1bA/
 eXqEkJ3NIh9pJZeUH9JaGiwwPXkQIYNDlX8QsymLy2M/zc6+JNezMza1IJ9OYh3GxFmG
 cyFMWi0/FN3r+vek+x4jOzGTpGOpglSY5tedem85YYEIfOABcbe/sMSggdxFlY+d/LF2
 1qPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+8Xa+S9jjxAX9/w1VQAWgOyHnKcfSE22W6k0u42Ch/M=;
 b=EmBE6YlGv7VWAAr1Wd3IEkTRcngJKonbmsnYOr+I0OdFS7TFuNrgEpTJGuWMWJv/fL
 91v8GIinlPZUK79dVdxvJXpZ3KlnHSTbnM5USFurRxR0Bfd04fbbMwXpMVwHHQ1+Js9h
 s0nNNVfydwT9skDqBWK+QVy1gbLXbrXl/Q04AkbDFMCBAfK8LTTp15LvAnYhhaBR+lKn
 cVKw9gOXe0Mx1kal1BuMdoINUNJsPur3Pe62uoqoL+YhYkuxfWB9DzyEeXjsd1VhISFN
 UTMR6oVI24E4TPJasjzNTSi+6rbqfsVVN3q0UDCKrwSqDvSbhgkJxkHYXywCTIsOYiOl
 7CPw==
X-Gm-Message-State: APjAAAVwxKawD2AWLlJuvcqQhoocOvGlrVdJE4jKYYACF3hE3XXc4He3
 JEZNEm126CwAsRtkb9/WapmfKOJ9I5G18AS+2B4=
X-Google-Smtp-Source: APXvYqw4me/iF36dfwkrocxtJlL7CSh7p35ooYH96agC4Mhbzc0giztzamD/auNUbXAXum/Kr+5Q30uE5QPj8IX/D8A=
X-Received: by 2002:adf:d4c1:: with SMTP id w1mr51472280wrk.229.1564449044286; 
 Mon, 29 Jul 2019 18:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
In-Reply-To: <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 30 Jul 2019 09:10:32 +0800
Message-ID: <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_181045_866575_40D8C193 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 9:06 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>
>
> >> If a controller reset is racing with a namespace revalidation, the
> >> revalidation I/O will surely fail, but we should not remove the
> >
> > No, there is sync IO request in revalidation, and the sync IO can't be completed
> > during resetting.
>
> Why? of course it can. The controller reset is responsible to
> quiesce + abort + unquiesce both I/O and admin commands.

Abort simply cancels the in-flight requests, which will be retried &
re-queued into
blk-mq queues, and will be dispatched again after reset is done. That is why the
revalidation IO won't be failed.

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
