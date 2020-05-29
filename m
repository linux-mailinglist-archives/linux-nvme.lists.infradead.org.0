Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612E91E8B44
	for <lists+linux-nvme@lfdr.de>; Sat, 30 May 2020 00:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwjMiHOQAxjij4cd3zbRbf8cpXBMYWDhaLdU5Y6Zbcs=; b=iZAm2E/Z+gnVVq
	jrKrzjaXTP9OacUV5mP8OBMlEaG3Ec19ZlmKbDaidLrcXvQmXrav1b8qkswa+7g8sys41kuvLoDaZ
	/bmTDhWCaYceo4gzD30bBy9fkqG8vAdCX42uy/BgCDqjKiB+amrtDvvWxu0g8AJSy+sjBmz2dM4mw
	sfQqYuIffA1iuZlHgYdvUm/S6y1bSrX8HF5XJDJTTDhIde+eiULc9zPfUwS6aE/fuz1TxxX3Ugmau
	KuY+guwMB5UclXedjbrYuQ/rx3PiVBOoLQr6+JS9gntHZiIpcwsvFc+823fGp+zvdW8JN7aKr3VwE
	RriOtEJ9/0jm1s/r1dvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenPQ-0006iW-VM; Fri, 29 May 2020 22:23:24 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenPM-0006iD-Qt
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 22:23:22 +0000
Received: by mail-wr1-x42b.google.com with SMTP id s8so5633871wrt.9
 for <linux-nvme@lists.infradead.org>; Fri, 29 May 2020 15:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WhUWUhv2t93m8FZWyi4PhqbyZ2LKivXiPEzLODLgNE4=;
 b=cgr42ZBkgMxXl6FziWMPoLfX+f3yDnZNqqrNP+zSsEOr80755Zu3tUe+x7JQTsig67
 lKte5BfjXrgkquAyRGC5pALpkBNZJNYmJoq6E80j8g1YjsU+wLVytC9Rt2yqTTYwbqNq
 Yl2tFy/qU00FJIHywAbt43zHEXm92nPDQ8q3NX3JuTmPfUaeMVRgUKehx7/x+NmZZxu5
 8gQfg/GZaK5FX6lfmjvcAHXRNuqjZ3u548omN8R0cu+XZQh8saAycKu1lcTw7Kx36RUz
 TIueIq21Er0KG8JD2C6iEzZXtnHeYvh29/ZYZWA8KwxyoatBY9NnCeyfKlMxoXxYuDkk
 fRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WhUWUhv2t93m8FZWyi4PhqbyZ2LKivXiPEzLODLgNE4=;
 b=Dnly3/gwZu6PfkMegGv9R1EjinblI9Ays1xpvHjFhLgAmdv6YRe6FHUO5RVik/iCKs
 nKoMOA7q8Gh26KBmLXThvFF6B5pEkxclYBTGZmnFSKLNsezZrK1ZZan7c9MYGFGFa5nQ
 dro/2ePJUqFffIs7GX48GwhfMXyqiFaVf3PhSHEmMLzSEk8apU2jVGt1Cu21hjvKrtTw
 8sptqYfnZF8DYXm+BONGBEqA3ii4YnyGvejum0u7aeRW+mUfpiMMHAf0lsmJDtNoWLXm
 480wiKvQRfDUu9quc6ZJKsRcNGrtPGTXjIYuIeIt476vnYJNgoY8OSEYfdRZkatxCRIc
 ZbWg==
X-Gm-Message-State: AOAM532pAli4GzxAaSsSghEMtdChHEmIcRQ5wMHDMd3u4IDXpH9cfcYT
 CguKD1YaUqyV5Nhr/guGXvM68tw+JDpefI2SRJU=
X-Google-Smtp-Source: ABdhPJxkGAbNH3w9I9hsRjgXZ2CBJoNRXCrsOtreFOCMf2Y8sbICZzHSYFGdh4X7H+3E8mg5/jDgDzHBZUXXQ5V0d7c=
X-Received: by 2002:a5d:4745:: with SMTP id o5mr10092817wrs.87.1590790999382; 
 Fri, 29 May 2020 15:23:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200528153441.3501777-1-kbusch@kernel.org>
 <20200528153441.3501777-2-kbusch@kernel.org>
 <68629453-d776-59e5-cdc9-8681eb2bab37@oracle.com>
 <20200528191118.GB3504306@dhcp-10-100-145-180.wdl.wdc.com>
 <20200528191443.GA3504350@dhcp-10-100-145-180.wdl.wdc.com>
 <f9cbedc9-88b2-acc8-5b95-f1c247ab1525@oracle.com>
 <CACVXFVOTQ7HLV5DCP1XezPqha13LfUrj-fZE8++_BAoTvtPWMA@mail.gmail.com>
 <20200529132217.GB3506625@dhcp-10-100-145-180.wdl.wdc.com>
In-Reply-To: <20200529132217.GB3506625@dhcp-10-100-145-180.wdl.wdc.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Sat, 30 May 2020 06:23:08 +0800
Message-ID: <CACVXFVMithaukPF45qFzTgzqQ2g2mhLbUD+-AyaNwVwZo7+CyA@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] nvme: cancel requests for real
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_152320_866861_711960CA 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tom.leiming[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 linux-block <linux-block@vger.kernel.org>,
 Alan Adamson <alan.adamson@oracle.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 9:22 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Fri, May 29, 2020 at 11:39:46AM +0800, Ming Lei wrote:
> > On Fri, May 29, 2020 at 4:19 AM Alan Adamson <alan.adamson@oracle.com> wrote:
> > That said NVMe's
> > error handling becomes better after applying the patchs of '[PATCH
> > 0/3] blk-mq/nvme: improve
> > nvme-pci reset handler'.
>
> I think that's a bit debatable. Alan is synthesizing a truly broken
> controller. The current code will abandon this controller after about 30

Not sure it can be thought as a truly broken controller. When waiting
on nvme_wait_freeze()
during reset, the controller has been in normal state.  There is still chance to
trigger timeout by any occasional event, just like any other timeout,
which isn't
special enough for us to have to kill the controller.

> seconds. Your series will reset that broken controller indefinitely.
> Which of those options is better?

Removing controller is very horrible, because it becomes a brick
basically, together
with data loss. And we should retry enough before killing the controller.

Mys series doesn't reset indefinitely since every request is just
retried limited
times(default is 5), at least chance should be provided to retry
claimed times for IO
requests.

>
> I think degrading to an admin-only mode at some point would be preferable.

If the timeout event is occasional, this way gives up too early and
doesn't retry
claimed times, then peopele may complain for data loss.


Thanks,
Ming Lei

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
