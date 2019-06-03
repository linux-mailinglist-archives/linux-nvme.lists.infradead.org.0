Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD97D33BA4
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 00:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4pEIFcQ7KVeY9H6kxkRoCvDAWRhQk2lUEpLTnQ3bzQ=; b=Lhf1rl4LkC/tn2
	K7Vi9VvPa69JWHaZfZ4MMoDkFDavY+e1c1UjdgeQjPxMwKwY31z9U+4Y6z1mMNY+rjy2rXNi64/FL
	lMPuaqfnYECWQcVFnQ3SYuLA9WTQU8zffa8B0hu6RisnXhAaysGzypUWxCqphlGZwkPa/x8zeOTol
	+NOZLzyaNFBfnlKwNiATTzRTaWV+hPImvK1W7k0Qiz9VPxox+fgi0FFmTW++FuAJkNNdd3gnT2g6V
	RVO5y+ISpY2XN5elEo644hq4s5NIerM9UErPO4tdEOy0I6hUWMqJ9l5s/SNPrNlYL2q2PnFfnCWp2
	KEfaHbb//Ipl8lOak+DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvvg-000073-Me; Mon, 03 Jun 2019 22:59:48 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvvc-00006e-PK
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 22:59:46 +0000
Received: by mail-lj1-x244.google.com with SMTP id a10so14592203ljf.6
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 15:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ipb0G2ABddj+s9WiCJt3AO6jxcH+fwWhI46oC83kF3g=;
 b=ZcmwQogiQnf4KD0OJQFbwahZrvUhkG3F2Tfb/NUifeLMlG8AJ0X9INBb9344clSjYi
 sJEkR2iY9a+d2fnCzEA+FKgay4FO1/F8doWF9hl1lFfE5PFCZbmdqvSkL9ZB0BYIyraW
 djkvrk4fu/2yqvAZBPsqV3CIpnRZSOGpKsF94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ipb0G2ABddj+s9WiCJt3AO6jxcH+fwWhI46oC83kF3g=;
 b=n6O6kogPVjwDyJZLvYEdJxX+YUsJxfuKM5ELwQmMZ3RdKag5SDCsfyk0WoPeI0ZBEE
 MgFJ0qOKC2d7lfT0hVNxMWo9TFtaVuuth5WOCwx/BfN5FaqG6fymNE7Ft/VkAgLeT+x1
 bNu9MiBrMcpnNxyNrhq2HkCIoorawhJYjtYXhVKzNBBPFWYXC7QDVmdB7WZnPvOTQKeL
 UDgvTb4SWTr5rowNmY+zNR7jt88UJzpFCmfjbsvdrZ92hQHdPB7MEN6T14R/A7e7ucxb
 IX9Vn17kCUHarnCaRPzzwPoBTSf/dSQA9SsI4zf+5BLzuGD6k6CGFTtwJU6NhBlmXXqA
 oQWg==
X-Gm-Message-State: APjAAAUnDVknhQzfF3ycK1DpyZxWG/Xqvmv2orySp9Ype7AW22MJ69AJ
 pvEjkAZAhrT6fzXMF3hITAr9FH1AndYen27rXLXkkw==
X-Google-Smtp-Source: APXvYqyXjkcPnaYd9tvMNcYmA3JjA2Y7XeKbOdhVGT87gKXRNKUSM3AmNW+62GVUqLk6EG4LZKeUPa1QLuScZd8P3Is=
X-Received: by 2002:a2e:91d7:: with SMTP id u23mr15081225ljg.150.1559602781066; 
 Mon, 03 Jun 2019 15:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <1559601877-13614-1-git-send-email-jalee@purestorage.com>
 <CAJX3CthjFcMHK--n4TPjjJ6LCTx-FbnS2tBLx0kmuBMtW04xow@mail.gmail.com>
In-Reply-To: <CAJX3CthjFcMHK--n4TPjjJ6LCTx-FbnS2tBLx0kmuBMtW04xow@mail.gmail.com>
From: Roland Dreier <roland@purestorage.com>
Date: Mon, 3 Jun 2019 15:59:29 -0700
Message-ID: <CAL1RGDUUMRWeLA6OtfAvUYuHVRO5Lc0A9xiWs6fc4iFfiGiHDw@mail.gmail.com>
Subject: Re: [PATCH] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Jaesoo Lee <jalee@purestorage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_155944_818244_10ED0AB6 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP(nn, 1024);
> +       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP((u64)nn, 1024);

This needs to be DIV64_U64_ROUND_UP(nn, 1024) to avoid issues on 32-bit kernels.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
