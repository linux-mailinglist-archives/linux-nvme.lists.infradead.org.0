Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925ABEB417
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 16:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9jOoVuh541k432PaYjvZqHncnGBKEEIuDw+HOd6S48=; b=NbeHEdr4euXvad
	U5/Ikcuy6uDzdbtDChwrJO+k6GbEyy8RIkcwPh/Xzkbv5laR0jPBBlMKbiNygwFyojrQOFXrT3n4g
	MkNDw2T56gmQBW4ngTZqAzb2xKok7Rf7orXXJey8DaR74HDE5APtDRdDC3i4K4XGWbjG05/zKwu+7
	SJJ0baaT0nV0X62cVZnYbtRFbPPRLB98isEJJpyIMddYJycmtT5Y/V4VLMJ443te/pKvwL2agFFFy
	dUN8Dfw3nT5i/fUVgg6EOmxtv0De0rrRycLquFbqQjoVccWnZSCdmGEax6de16AYGJXgpXmqaGS5N
	7xxau06yKd4ARI0td26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCXm-00029q-0F; Thu, 31 Oct 2019 15:39:26 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCXd-000277-Li
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 15:39:18 +0000
Received: by mail-yw1-xc43.google.com with SMTP id r134so2280433ywg.2
 for <linux-nvme@lists.infradead.org>; Thu, 31 Oct 2019 08:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TDNNf3dZzdejekmw1xBvnSNBpR6LjmT25tUuR/dKBac=;
 b=XSsGQbERj7XWfLg0CXg722U7VWuezLjYGTs2K7pzt8rO8QzLcMqOZ4f9zW4TWMrInW
 I6WVUc3XDdTWOZAXVBWXRkcnp4jkVdbA7nGkpxYFewMzVI/8Ix9NVTEchD0/HJuphGCU
 pMYYwUVFvs/0BDZxQQkfeAe49F8hMF/WP3PQzjKYypF3e3Sd6y189lrA0T0S5DPmpxKj
 eANRKdXsbAaIo1RjwxTIJdAlGnDsxapxjlCC5gGc9tzy5zjqIM1N37A7YQw3MEYtIIP/
 p2X1Q1Hrr1J4/QqexOAP/1yNnzfUVnVcqf5HE3H+WpaL4pGbHGKxbF4OV/lDWa5sFbfS
 Es7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TDNNf3dZzdejekmw1xBvnSNBpR6LjmT25tUuR/dKBac=;
 b=AuNKVgJCr6pedND/HzUmVuOkIgfKO+m4sdO3/fs4IZjhTs/X4kJW9NDIbPHjtPuNa8
 hjT8CpwMpxuQr5Fu7rWMnBNytP+H79hC0LlxzFs4eCqrtg5xl++Mc/Yrnbwm/4j+vFkx
 r/RaDpCfUHrGP4iZDOK3faG+cNO4Ep0fpJeMCpBlbPr9J+M/7LgFHQg2EvDu7EC45a2w
 kle/3isp1qy3vZbJRQZ5Swnw6gQZWvPuEfgwCMyqdkF8Y56ynvIAmT1Gnf6unOEF4cRq
 AEf54Jl1tYI3vfABK71oeML9I9Y23Rx5lYiNRip9XDaW+kRCt0dd0yKnT1ZpZuFk9GKc
 9BVg==
X-Gm-Message-State: APjAAAV8xKzSrgs46VzNGS9smuKwiUyKv9aQFK0571AODp6Q3mhyMqTj
 rroC6cc1DPXaEtF9BHC2M6YOpm+X/QYOjdqBfxMHtZhdrTn9gg==
X-Google-Smtp-Source: APXvYqxCMFbl8T6DK0NLkjyTPPHvhHf7jPsbsx4zNSpUUxZgB7EUfreySyi2hBaMYT+u1aNuG57axkj1Xo3MsrU60i8=
X-Received: by 2002:a81:6d56:: with SMTP id i83mr4367544ywc.138.1572536356094; 
 Thu, 31 Oct 2019 08:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <CANSCoS8rN6g7u6iG4SRTcXjdj68cbimvX1n1Ex+FBAkhAAivJA@mail.gmail.com>
 <20191031135904.GA5180@lst.de>
In-Reply-To: <20191031135904.GA5180@lst.de>
From: Charles Machalow <csm10495@gmail.com>
Date: Thu, 31 Oct 2019 08:39:05 -0700
Message-ID: <CANSCoS_GtDm2=FR8grhWHwm5-Aqvqb=4u+z=auY4e1y5eS3Q2w@mail.gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_083917_738940_68226DD1 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (csm10495[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (csm10495[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 marta.rybczynska@kalray.eu, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 6:59 AM Christoph Hellwig <hch@lst.de> wrote:
> You might like the idea, but it fundamentally is a bad idea.  For example
> you completely break architectures that do not support unaligned loads
> and stores.

Would you also be against the idea of memcpy the u32 array into a u64 then
passing a pointer to that local variable lower?

- Charlie Scott Machalow

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
