Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EDE69F5A
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 01:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYUWb1wjRyMHIuZaEo5N2RVqZVHrr4xmJjy21FyQlSU=; b=ukbsB7OehvcNoH
	K9jChyEa+JRqo8DPXOXvLqNdLqTAsUglgfhdkaOeh3yAZ32LRiTaqy3iQNeB++qYx8ADl0tXvv/VX
	glZUgGy8rPPi7UbxOs7rChpwfJvtcfqVGHheTs6tFDw3OrS5bxboy2xQmqJjtpidXYs4G2Ic7//tm
	1202ng7DWT/DGuFckj2WfoRstnKKf+WmPQvTneMedujDGlr9bFYJm8h5JnXvOEBXfLYDm9zggUu9i
	m3o1YV69/kHCG9oFjiU5GZGPoAChZB/zZGRNzpwLSs4hB9mGIRlDirCdxGBvO9y6MpyltYCyHIGkw
	8IoImY7fwJmLikETVDnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnA4U-0001Re-Jc; Mon, 15 Jul 2019 23:07:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnA4G-0001R3-GH
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 23:07:38 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so9048771plb.9
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 16:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xm5ERYpf8xDBMsIMMEqpgHX/opm0oJBnr4ig5qE1akc=;
 b=nO7JDWkuSSVYlYAV1lm1SFqOKeBU7k6gxnehcsFT2x21a+ESXU0ippEXhoevTOPLId
 lwjqaYsNnuR3zIvqfzk7w6lymIAQr7rpO1UaguCmQ1xX4YdVpks2fH9dPASW9wW2ZVdS
 BtLCigSaoTQxnnFf0GYsqQ9eRi/Q+JkxvfRtSJEFvFJRH/MRRf24qCd+RR+HSDyswRom
 W5f3Guevmmlhek6RNJjwNu8V+Wz6N0YiWBT8+nt2cC+D7WkaqrzKl19PmDxGkRy3BBL/
 QQKzDElT/H+cMOKPDwcIzk8sN4brFH38vR88WZJ+TJrovAERF7fMiwbxaebgdLSD9i4R
 Ds1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xm5ERYpf8xDBMsIMMEqpgHX/opm0oJBnr4ig5qE1akc=;
 b=UbZJWxLR2XgVAmrpI8xeL5ttr9JmEsbaZmiJqnXTLqHmLNw4P9K8Jt6VG4lKspiLmj
 enY9kdaZxSZkIi1crNSRxpJfpnIn5rChXVDcryXenHHCqWR4uwfCfOjWVqKg4OdMy1kQ
 uy+z5P+NUcbzcXyHeBoTenhAcgnrDYFkQinUe4bpW7S8hUXpr65+RKo4yitlpBvnsRay
 wG4Ec9YgZJjtbHDr+6UJKhMLH5kutZda9r0zywEFfRKuUsf9QTIq8vksKbZPNzAi2C93
 kd/VErrHBCht4sgfENp0EmN4jBfwVyieLGRgPlCVEZSsQGIMID9r5KMK+99V54FG6V8C
 hmdw==
X-Gm-Message-State: APjAAAVLoy5F4gvlJooQURbpd2dg6AQEI/6eAllr7XWlpcEIXCWOTZHb
 7myyrVLtu1wBuWRPgHT6VM4hZA==
X-Google-Smtp-Source: APXvYqyya/YYukqoHalj390zEcSYsHkxdFRXscVPfyVy23LFXlpDY2hDnBnBtRsd2NvkqIwGwSx2zw==
X-Received: by 2002:a17:902:bcc4:: with SMTP id
 o4mr30597758pls.90.1563232054358; 
 Mon, 15 Jul 2019 16:07:34 -0700 (PDT)
Received: from vader ([2620:10d:c090:200::2:f4a5])
 by smtp.gmail.com with ESMTPSA id v27sm21592917pgn.76.2019.07.15.16.07.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 16:07:33 -0700 (PDT)
Date: Mon, 15 Jul 2019 16:07:13 -0700
From: Omar Sandoval <osandov@osandov.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests 02/12] nvme: More agressively filter the
 discovery output
Message-ID: <20190715230713.GA5449@vader>
References: <20190712235742.22646-1-logang@deltatee.com>
 <20190712235742.22646-3-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712235742.22646-3-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_160736_842491_915DEF4F 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Johannes Thumshirn <jthumshirn@suse.de>,
 Omar Sandoval <osandov@fb.com>, Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 05:57:32PM -0600, Logan Gunthorpe wrote:
> Comparing the entire output of nvme-cli for discovery is fragile
> and error prone as things change. There's already been the
> long standing issue of the generation counter mismatching
> and also some versions of nvme-cli print an extra "sq flow control
> disable supported" text[1].
> 
> Instead, filter out all but a few key values from the discovery
> text which should still be sufficient for this test and much
> less likely to be subject to churn.
> 
> [1] https://lore.kernel.org/linux-block/20190505150611.15776-4-minwoo.im.dev@gmail.com/
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>  tests/nvme/002.out | 6001 --------------------------------------------
>  tests/nvme/016.out |    7 -
>  tests/nvme/017.out |    7 -
>  tests/nvme/rc      |    4 +-
>  4 files changed, 2 insertions(+), 6017 deletions(-)

[snip]

> diff --git a/tests/nvme/rc b/tests/nvme/rc
> index 22833d8ef9bb..60dc05869726 100644
> --- a/tests/nvme/rc
> +++ b/tests/nvme/rc
> @@ -120,6 +120,6 @@ _find_nvme_loop_dev() {
>  }
>  
>  _filter_discovery() {
> -	sed -r  -e "s/portid:  [0-9]+/portid:  X/" \
> -		-e "s/Generation counter [0-9]+/Generation counter X/"
> +	sed -r -e "s/Generation counter [0-9]+/Generation counter X/" |
> +		grep 'Discovery Log Number\|Log Entry\|trtype\|subnqn'
>  }

This can be done in a single sed command instead of sed + grep:

sed -rn -e 's/Generation counter [0-9]+/Generation counter X/' \
	-e '/Discovery Log Number|Log Entry|trtype|subnqn/p'

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
