Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2439DEE38F
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 16:21:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xdMde3U3NIx1EH9gjDF2qbQ6+BEoJsDZTWaKortyl8=; b=faw3ug19wBc+db
	rh1CGn/7mse7sSbG5aHBC2MgPQMJRCdBt4Zzwjjuy8cWzvqFS4U80fHULgtUIzwpuH40vDNxVX/HD
	MgW2Czc7XbdaL22+yIZnncbktdRntCp3PIIP6rachFBtJRMlqC8I+woGbP8N2+I928ZGNblutbKan
	UwWHZJZKyzOZ32puSG//Tus22Jq3LMXzabTw2z4okHNqaiXiHyjSdCXY88GmHqDlVtiXk2AmLGTLF
	kfvjJcHLEAzcd+G94cCWHs1LG5OfMKNu762P4miROa38BeAQ9CyuLQ24bI2SHZnfbEb8UzITFb8Qr
	FELF9CJEsuY7jyfnnVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReA8-0007N5-JS; Mon, 04 Nov 2019 15:21:00 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReA2-0007MD-5j
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 15:20:55 +0000
Received: by mail-yw1-xc42.google.com with SMTP id k127so7059907ywc.6
 for <linux-nvme@lists.infradead.org>; Mon, 04 Nov 2019 07:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Luti0tQiJhItUnQbPoidnL8DId53OBM9Rj2bS+xXQGQ=;
 b=SIWwAK2mezGoY9UG7SR1eHZmjkDzG+LtE9EPBS4fE0EpIf3cqQaT//OrBo+EtWNKoA
 AuN0fA1lwsO1D678F23Qr6r59UdlTDfgiob2fFHrvvegK9zt+yVMOBg8Z7R2g2Y9liDU
 8+wXMmy5LRtVlm7bp5ZDcdfZ4+H5GD2LTSmdYWd4jlWQbIDWUjATVAsDE4Ir5+sJJX9s
 MzPnmk9XQ/pPWNSRRM5FHjU4Q2q3VG0gh3XhrHoJiXMLBHucBAdMMAVJHGmnAtx0NKjA
 vjDb4Z2IdZdUV7I7Hr2CkHNm+y2ZzggFcaa7jnPq8ULG3j9ZUG94ZMyJy1NEWamJo5S0
 9SeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Luti0tQiJhItUnQbPoidnL8DId53OBM9Rj2bS+xXQGQ=;
 b=ZST8txWzsEq6s51aUdj4pnpMMgSn4/d/K/QO5yNOdCtjR3x+80Va6tzKhW4wPWakhs
 saUmv2xusZeVhaor4KlmpS0kBwlA9yD2SHZYLsif3eDOEnj52pLDwd2CvRB3bQPzqsW2
 wIY9QZ5ZYaHa9DXSSEbUluTY5qBqSdFWxQWCF0Tqi56Vo7pR5LBoltTkZ5Bv6RBXSycg
 GC6fhgd2LqVjoDPcWfsOqpJtYa54fVuGvnA/4AWQOilHm5AFIQtvbCvo/raW5dN61vRv
 c/SI9JbGTBCIeShuTEDtDUk5r4Yjwi8y4rIHPq39Zd39MgiBtepYMKILQCR6N9e3DzXb
 KOFQ==
X-Gm-Message-State: APjAAAUYmNLEhTRARwJD9n3JqgHhrubo63v6c5DyBXZXAxPz+nMOw/HC
 f5+DcClTy6qwB/KwVDFKhDm27I9ANKUQfOEbLs4=
X-Google-Smtp-Source: APXvYqwZo2tsf7nvbTk8g69GUTtQFbGtIsUzz/1gNs+Z08yppSHxlSkUAhx6vt2vS3a8AGFJXmiC7DDrDDu77VtgBRM=
X-Received: by 2002:a81:27cd:: with SMTP id
 n196mr21457626ywn.148.1572880852863; 
 Mon, 04 Nov 2019 07:20:52 -0800 (PST)
MIME-Version: 1.0
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
 <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
 <871357470.90297451.1572879417091.JavaMail.zimbra@kalray.eu>
 <CANSCoS_MX97_JyLkKrZ7YjTS9L+JsZcPsHpoZ-keA8t3W394Dg@mail.gmail.com>
 <266047531.90300507.1572880575232.JavaMail.zimbra@kalray.eu>
In-Reply-To: <266047531.90300507.1572880575232.JavaMail.zimbra@kalray.eu>
From: Charles Machalow <csm10495@gmail.com>
Date: Mon, 4 Nov 2019 07:20:43 -0800
Message-ID: <CANSCoS9A1XY4DzdBwGU4+oT-uKvpohxhyWxdJ1ySJ6QKv6moKw@mail.gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
To: Marta Rybczynska <mrybczyn@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072054_268381_0D7DB890 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (csm10495[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (csm10495[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The thing with that structure is if you use it with the old IOCTL, the
result will go into rsvd2 instead of the first 32 bits of result.

- Charlie Scott Machalow

On Mon, Nov 4, 2019 at 7:16 AM Marta Rybczynska <mrybczyn@kalray.eu> wrote:
>
>
>
> ----- On 4 Nov, 2019, at 16:01, Charles Machalow csm10495@gmail.com wrote:
>
> > Yes. The idea is just to change the 64 IOCTL structure so it lines up
> > with the old ones so that the same struct can be used from userspace.
> > Right now the first 32 of 64's result doesn't line up with the old
> > result field.
> >
> > - Charlie Scott Machalow
>
> OK, then this will work on all architectures I know:
>
> struct nvme_passthru_cmd64 {
>         __u8    opcode;
>         __u8    flags;
>         __u16   rsvd1;
>         __u32   nsid;
>         __u32   cdw2;
>         __u32   cdw3;
>         __u64   metadata;
>         __u64   addr;
>         __u32   metadata_len;
>         __u32   data_len;
>         __u32   cdw10;
>         __u32   cdw11;
>         __u32   cdw12;
>         __u32   cdw13;
>         __u32   cdw14;
>         __u32   cdw15;
>         __u32   timeout_ms;
>         __u32   rsvd2;
>         __u64   result;
> };
>
> Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
