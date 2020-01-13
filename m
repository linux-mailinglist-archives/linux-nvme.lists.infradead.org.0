Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC942139A02
	for <lists+linux-nvme@lfdr.de>; Mon, 13 Jan 2020 20:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KJ+G+Bd1MQSZKSEmKY5RIk2FDf0iDgTeiOvtLIKBhI=; b=JPMulNcxgURGEI
	s7KbVopJlAsMl04x5bTstBdcMK3/DNh4uw98Kl9Fw7Nfff6GI8n878ojOjGzTvP4WJj023BOjz0C2
	IZnocM6B1Z1h+uovNqoAvEXzjRijp2+E3uGeAyyAh1T6QX2Z2K872pCYvJhkLt3sXL8Nc+W3bA0lv
	wFo0oxQFK1YutmTYYmNxvFuDv747w577fGQA/n3cgxUT18I4+khV4uHhji0khmrvwtAq+3g007D9E
	yJA3y+h/ShJrKUNEEE+8DKW94j8Td5puzvWBNztTdhbacE6wEYWoiRrSVUmwCsqu35NJvGLn6zaaU
	mJvXXBm+gmiaHSiOReug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir5AV-0007Oi-L7; Mon, 13 Jan 2020 19:14:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5AP-0007OM-4h
 for linux-nvme@lists.infradead.org; Mon, 13 Jan 2020 19:14:26 +0000
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFB7C222C4
 for <linux-nvme@lists.infradead.org>; Mon, 13 Jan 2020 19:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578942864;
 bh=LgMw0iYVlmL769HXp3a4BUloYXbNQ+gIZJ3aeOv5krg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b5Cqf28sxlcU8f9fyL0hu/Dur0H7Vl2M2T8jQEpg5wPErYr6q0pY+pm4Lg3+NnvZw
 //VWwKwhxROzTmHier5nPTub8KKGbaD0BceDehodHZsaYyubJkJjnpuzkbZW6DSfIM
 XQXKDp0lhSnl0KPgvaHiFbNb4+uU1y4JcxaDU3Gk=
Received: by mail-wr1-f53.google.com with SMTP id j42so9759168wrj.12
 for <linux-nvme@lists.infradead.org>; Mon, 13 Jan 2020 11:14:23 -0800 (PST)
X-Gm-Message-State: APjAAAXBTz8xnZi3Ge6WltdxIglO4oW/g9Pcgda6Unh49306y1qm/ftC
 sRJW2pFelNg4v9wOS+zpa1pxbcsfN1Or6wPRrcv5sQ==
X-Google-Smtp-Source: APXvYqz22ZlgTNdJaV+ygCWB8LAYLXz0ORyxWwgQ0kEz9BgnW77HFEpBTS8mJ84sXXCAahM/APNBvWq7Q94+ppJs8Ik=
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr19949499wrp.111.1578942862294; 
 Mon, 13 Jan 2020 11:14:22 -0800 (PST)
MIME-Version: 1.0
References: <cover.1576726427.git.luto@kernel.org>
 <b4feb87b30edfb30998a2b42de3b1e0618203700.1576726427.git.luto@kernel.org>
 <7ae79adc-896c-f007-dcf8-3cff84b3bc02@redhat.com>
In-Reply-To: <7ae79adc-896c-f007-dcf8-3cff84b3bc02@redhat.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 13 Jan 2020 11:14:10 -0800
X-Gmail-Original-Message-ID: <CALCETrXOu85fPfaMtUNsLOSOmue41Lyk413mKwHHD9w8AokZ9A@mail.gmail.com>
Message-ID: <CALCETrXOu85fPfaMtUNsLOSOmue41Lyk413mKwHHD9w8AokZ9A@mail.gmail.com>
Subject: Re: [PATCH 3/4] Use systemd-generated hostid if no hostid is
 configured
To: David Milburn <dmilburn@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_111425_204616_89627FE2 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>,
 Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 10:14 AM David Milburn <dmilburn@redhat.com> wrote:
>
> Hello Andy,
>
> On 12/19/2019 09:31 PM, Andy Lutomirski wrote:
> > This is just like the hostnqn support.  It adds a show-hostid command
> > for introspection.
> >
> > Signed-off-by: Andy Lutomirski <luto@kernel.org>
> > ---
> >   Documentation/nvme-show-hostid.txt | 29 +++++++++++++++
> >   fabrics.c                          | 57 ++++++++++++++++++++++++++----
> >   fabrics.h                          |  1 +
> >   nvme-builtin.h                     |  1 +
> >   nvme.c                             | 15 ++++++++
> >   5 files changed, 96 insertions(+), 7 deletions(-)
> >   create mode 100644 Documentation/nvme-show-hostid.txt
> >
> > diff --git a/Documentation/nvme-show-hostid.txt b/Documentation/nvme-show-hostid.txt
> > new file mode 100644
> > index 000000000000..52bdc8a1f480
> > --- /dev/null
> > +++ b/Documentation/nvme-show-hostid.txt
> > @@ -0,0 +1,29 @@
> > +nvme-show-hostid(1)
> > +===================
> > +
> > +NAME
> > +----
> > +nvme-show-hostid - Generate a host NVMe ID
> > +
>
> I pulled the latest nvme-cli and applied your patch set
>
> https://github.com/linux-nvme/nvme-cli
>
> Seems to work on Fedora 31
>
> $ nvme show-hostnqn
> nqn.2019-10.us.luto:sd_id128_app:a9e4b2c8953340988142e32ca6d67922
>
> $ nvme show-hostid
> f467779d-1940-4659-b200-74278899b2ca
>

Good news!  When I run it, I get different output!

$ ./nvme show-hostnqn
nqn.2019-10.us.luto:sd_id128_app:a3cee2b99e504da68d4b9e7de354bebd
$ ./nvme show-hostid
c701865f-88c9-43c3-83a0-ead417dea2de

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
