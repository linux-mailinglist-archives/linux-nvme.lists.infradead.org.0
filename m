Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3094B22135
	for <lists+linux-nvme@lfdr.de>; Sat, 18 May 2019 04:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEeFTSuDPbaBlTTO1vyyN6OJP5WOCdVD/ZSTjj2cJRo=; b=BVQCMZ73V/uziS
	VV1axdlRVuu9GluBVKIKTpNHuiVBeD9yn78hCkzui1hwbdVe8ikG34VVB7XLk4ISG9oSfWFyy9Y0V
	QiTlv7m2FkWn2IZoC8Ye3O90scfCxoh0+HLT8kDU6eJeLrSJZYVVMZtwuvr4ymr2NOOMpCYQatScy
	kDwOABfSg/cdweG4wgCk4M1I5uPBrfvW9Fo6h/6S110WqP9jQQ9a3F5OdMH2WYb/JGa6o1eX6UDND
	FI28hI3x05c4HarmW0ngCI09wMzd69MtSQIOiZp9UJVAUvj3nju1blhnCS5bucR88KrSllhSw/Srh
	CPgmhl2AMaQhiDKciJoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRopb-0001zd-Fi; Sat, 18 May 2019 02:12:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRopT-0001zK-LC
 for linux-nvme@lists.infradead.org; Sat, 18 May 2019 02:12:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id f12so4134431plt.8
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 19:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6dZilZOrKD/+f4wxtqkk21JzGk5u5RhKsFPFxYt0T2U=;
 b=oX8Jm3WIfeGs/qVsZiRuWjgxZ/76rfWmJ/omU87ATD4OJ1kbpTezQAhoWHQyqKBAQz
 8us0/wKPxGGSiRrvIPabw6/9xjAfVjr2U3t59wazZA1JSVzC7R6fwvFVvEhtupoMoeEl
 5zg0z4EqN1Qi0traay24AxZ2SdcRZbqxBlnhtyUKoPcjc+OGHR/0Cccs6dP/1cNtwtdc
 5jDC50RpUi9IgHJZ8QPrjFNGD/o4Jh/B8jvneUWeldaQwbYy7OXnyG1XOiCoJhTCA63/
 DyRK8QHkmyQjPYf09CMEEh09DSsz7RoHyTMwQpOLYYguGY1ShYmjI9VxqG/6h3/PVX73
 NAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6dZilZOrKD/+f4wxtqkk21JzGk5u5RhKsFPFxYt0T2U=;
 b=N0qERbcGvZKNR1A88uxzmQKmGcpB2+oQgWpIZzD0fT/LzVbEbeEdwcwJKympgniSRb
 vI7DYRfkPAmhH+88s+GIEt1KWAbcHANxdfEU74jMK8oXJCWxJan1QCeJC45r4yJ1FJsl
 i//GNltjYQfB44aIOlNmh93MI+JsMaE1uNBcw6H1NwUAgXzoXDXdjgA5DIZyd3ulD6gZ
 PkUE6eWyRjwDJaIncEFrBU4MFk8S5yUD+rZ0uY2lbbgRqWVMV+tmHrVj7pJx2OJbNcMv
 Pugaa9v3NrQI79xphzNa0nU/YnsPxfGx2pFjO2t8b27jqAPF9V2JifOCuuRHRANtoeeW
 72Nw==
X-Gm-Message-State: APjAAAWb+pbZdi7nsdI6AOanIIVrBf0xZdvNiVx0oHWMK2Lp6sfRUXMN
 gZp5wKlEFq+AMEWKRBYcetNam+3VuYI=
X-Google-Smtp-Source: APXvYqwEcW3UZ8XmJ7VhPz866dIrHgZKG7TF108rS7GCiZM6v3LktiQhBJenT0N5C/z9re6fegcdlQ==
X-Received: by 2002:a17:902:63:: with SMTP id 90mr7240296pla.342.1558145526909; 
 Fri, 17 May 2019 19:12:06 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k7sm11847661pfk.93.2019.05.17.19.12.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 19:12:06 -0700 (PDT)
Date: Sat, 18 May 2019 11:12:03 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Subject: Re: [PATCH V3 0/5] nvme-trace: Add support for fabrics command
Message-ID: <20190518021202.GB31204@minwooim-desktop>
References: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_191208_441108_46B67CFC 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-12 16:34:08, Minwoo Im wrote:
> Hi,
> 
> Here's a third patchset to support fabrics command tracing.  The first
> patch updated host/trace module to a outside of it to provide common
> interfaces for host and target both.  The second one adds support for
> tracing fabrics command from host-side.  The third is a trivial clean-up
> for providing a helper function to figure out given command structure is
> for fabrics or not.
> 
> The fourth and fifth are the major change points of this patchset.  4th
> patch adds request tracing from the target-side.  5th updated, of course,
> completion of given request.
> 
> Please review.
> Thanks,
> 
> Changes to V2:
>   - Provide a common code for both host and target. (Chaitanya)
>   - Add support for tracing requests in target-side (Chaitanya)
>   - Make it simple in trace.h without branch out from nvme core module
>     (Christoph)
> 
> Changes to V1:
>   - fabrics commands should also be decoded, not just showing that it's
>     a fabrics command. (Christoph)
>   - do not make it within nvme admin commands (Chaitanya)
> 
> Minwoo Im (5):
>   nvme: Make trace common for host and target both
>   nvme-trace: Support tracing fabrics commands from host-side
>   nvme: Introduce nvme_is_fabrics to check fabrics cmd
>   nvme-trace: Add tracing for req_init in trarget
>   nvme-trace: Add tracing for req_comp in target

Ping :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
