Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212423A199
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 21:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nj4/qzwfstiLA22Rp8hqqhFYpXPl5TeoEU+XybiIQjc=; b=i5WWmJyyLixRtl
	bMwIIobNAKtUvNzvRvM5OZeAkVgiVxjv9WgESHl1tA8xIgobaZkh1+ZvKrz+LTX+7b0xXlyf750tx
	32YawxEPZ+amS479Tc9sDakCuH0LNsuhqk1TwBMckh372BWwayR/qyWxDRB0qE4P0iA5i6qyaFf2y
	mYM0B8z+CYN+1xOqugOjE0eD6VNqjcjf9V1mRmX47ygOboU4D84Xye67+22Z2s8Yi8m20R2/JCUKa
	NRbwiNnZQ5s/n7sBIAs118HN90OT/MvmXJebi/wSdHhFzM2vdjzO7jsQMwYLM+oYUXsDEJ8YoQQVu
	sYQyrNVrC1oPEY++WZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhKY-0005m7-WC; Sat, 08 Jun 2019 19:48:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhKT-0005lo-D5
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 19:48:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so2887281pgp.11
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 12:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jUsEjllMnxBTmCgawiwKJHkNtxMpnRO3MMyqYoOnFl8=;
 b=PM6TdaW4sW17DGUv3ptdYG7OY3hm5RMpM07ZRLzoproiF6obFKIrWu/OIwyOpNaiBu
 N7sIgo4X2KDac0lJ9bo6csnJ4e57emWUmoHK+zGX6vtT/tcl1rq91FV2bjeGAkollQr5
 cf+i73BQcRGg2FF6JQwI478InJJNvngiBIzazOACrcgHlAk1/Mv5Ygxd8GK79xP+V8Lh
 7dT9ix0ZMd+tPjWjDEcNbRm5IzUE60tzpNaVd7yksRl0+t54T4CPaS1mHlkVpEbdDRO6
 CaFarqHF7oELOgDXRw0rRJivFg56m0RD12W5A8ve9PzvEHxkr5vjGbtD9fXA5244TiE4
 oMSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jUsEjllMnxBTmCgawiwKJHkNtxMpnRO3MMyqYoOnFl8=;
 b=qzPLAp8bvx7wRh7N6hTjQcVzmgcSGF37+kh4DnuJ4G+khwvHOWAHonDVP2Y8yWiXBO
 LQa18fBwURZJAwDTVFmkUCwwzS+6gGrB4H5q8TWOu5ZE8Ap1xTs9gmHoRUYRXhtZc1Q8
 gPI79vpaGU5l1CKGRQwD6KnIWhNjl2OyAQZIE5vFIe9vEbz2PLhLGfiTpVtqzgx1HVyd
 uNAqM3RCVbpTFNHDRh1s9O0PlSlJFgckF1qN84cyCC6RtSXdn5nyDUIIBT90KH9aYFKO
 44sIizfXb0aD3ErjhIEumXzs46QnzhAarGHYFzWoXeMQmSNm51jFsEzgsaawyOUqqlw/
 i/6A==
X-Gm-Message-State: APjAAAVHJ6tD+WY9bIN41NzDrHuVE5LswVGB+/cMbJL1C3jl3WqgscQq
 IU5U2hzvQlnxzxiYgoZoKAI=
X-Google-Smtp-Source: APXvYqxQ165zInLTubzXmriT+x4+TyeaXZ1pDrY2lp/aiJrlLOsXKm+xki1VIKD3ke9ppOYkar4V0Q==
X-Received: by 2002:a63:4d0f:: with SMTP id a15mr8948297pgb.59.1560023320713; 
 Sat, 08 Jun 2019 12:48:40 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id w36sm5696673pgl.62.2019.06.08.12.48.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 12:48:40 -0700 (PDT)
Date: Sun, 9 Jun 2019 04:48:37 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH V6 1/6] nvme: Do not return in the middle of the subcommand
Message-ID: <20190608194837.GB28228@minwoo-900X5N>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-2-minwoo.im.dev@gmail.com>
 <BYAPR04MB57493403FE6895517AC1B39D86110@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB57493403FE6895517AC1B39D86110@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12 (ee9983f0) (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_124841_486224_019518ED 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-08 19:16:08, Chaitanya Kulkarni wrote:
> Hi Minwoo,
> 
> Thanks for your patch-series. I'm not sure I understand the comment in 
> the cover-letter, please correct me if I'm wrong.

Please let me thank you to keep reviewing this :)

>  From cover-letter:-
> 
> "  - The first patch has been updated being without an whitespace in
>      front of new label("ret") in a function.  The other lables added
>      followed the existing style in where it belongs to.
>      The default style would be great to follow the kernel style which
>      is non-space label, as suggested by Chaitanya."
> 
> Which I think you want to keep the labels as default kernel style. 
> without any spaces ?
> >
> > + ret:
> 
> I found spaces like above everywhere in this patch, am I missing something ?

I'm sorry if It was unclear.  Simply I meant that the default kernel
style will be prepared once this series is done because now the labels
from this series are following their own functions existing style.

If It's now following their own functions,  It would be dirty at the
commit point of view.

For example, 

223  close_fd:                                      
224         close(fd);                              
225                                                 
226 ret:                                           
227         return nvme_status_to_errno(err, false);

It's not about the clean-up patches so that we just can follow the
existing rules of each functions, and once it gets done, I can prepare
the clean-up patches for this one.

I hope you can agree with this, but if not, pleasae feel free to let me
know :)

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
