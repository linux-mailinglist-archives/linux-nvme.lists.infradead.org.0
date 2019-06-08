Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704C439A09
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 03:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wx6Jcfqs7/HMaec2zjtuTIbrTbgWRDhXj1RNnhgWTak=; b=GwonJvzf+LIw3G
	rfIj430iBOsdtU56B3B5Hdih6k3vX7QWQc4S8Lo6nbFidDAdxtxZp+tbpPiv4OMHjiiMiQuohjFQX
	4NcFRpzIRB8Q+/Cu28mxUszislMf86Y6gG9FMCHiX8VMgJ9FVceIdn+BmcZc1tg3VOJuXm+ErOcFx
	E1CXghskABwg5qhSfiGCzn11MMiIccopF+9VBJuIsVazg/HZytxRS2ejGoJX4g1lhqOQpMeMQlOOm
	+nTQMEeB63v6RIVENX14H7iAqjqCzaHM153vPfTO9J8E2tV4gP4o4qFkpWGMpn54wYmOCejv1IhTq
	WTc3zJoiGHEJfT/dDr9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZQGK-0007jZ-8C; Sat, 08 Jun 2019 01:35:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZQGG-0007j5-43
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 01:35:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so2113563pfe.6
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 18:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=44htWoeozfln1RP9YHnaYPIAw2hFkLZPH7KUgbi0fRM=;
 b=nQAZB7sMJcf8nP0WXrv6/p9oOj97lMwjXoLSXxGgZ6DQ9DrZx6ipMKwW8yUNE8iq/4
 SO8ikESqz3RGsaI/A2kvPy6nKgbQATMTwaLpdkcbGBmoSD0ObStkpWaH2VcB5tH5cJHs
 AQDU7HhgQEEYZxLiUMuYI9seswll1G389k7xkHGs6FfUWu3DfXeJ4JSPaTLQsOPRAlPR
 J5R8vvGmqQuy4hcxWu00+e6cuKfIxj8/8hcYhfodiNGxiiDn/5VE+kt2D+G9jK9x8mZU
 vBPOPZrn1Hic4VwX2U3f39aLU9YquYZQlc1kivNiiKgrpq2qzdTBBcWiR0hhTv0AgGJu
 1W3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=44htWoeozfln1RP9YHnaYPIAw2hFkLZPH7KUgbi0fRM=;
 b=Roc2wHGno+HwPMSuBK8aanQHxa/x8Hsbe1w3WTh9K8GlN/joMOEj5gSC4V49sDWg88
 xxrEgKt3iYBHEP9AMIszs2RACiu78cnWAV4+7OvIl/xz5ffY5TJuqAdwgjLeIrlHaj2y
 bTlfh4JDBrTfn9bpqawh1LkAeWa1bTMf4sNEP1ry2jjPXDoRtdZqNvi0x3ZVDgHBU3b1
 FREAjBV53P+ecDwxdhlq9A4oLDFnG1kL2qBYAzPnpK3jZWgJP3c7L+lmb8IYEnYDPJ/K
 ay6UcPMxPBXSM0wsUkIyRC79WKUtp8SNRkdKwqXYjYnMT7X9WgSHyyzgGHWTjcljp1BN
 Wcrw==
X-Gm-Message-State: APjAAAUFkH4FmdsszMVIF/Wi6uQtkuRCsNoBWDZp/1Fqose9QgYsWigQ
 AEGFrPVtI3uYRagptZheBVA=
X-Google-Smtp-Source: APXvYqzzkV8wfbv8Zw0nSDFeyZI6A2TqwBU0IacUQnrXkJM6u3brb26tSyOE19ZhCI9vL1z8bCx0vQ==
X-Received: by 2002:a17:90a:d16:: with SMTP id
 t22mr8972425pja.130.1559957710616; 
 Fri, 07 Jun 2019 18:35:10 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g13sm4721196pfi.93.2019.06.07.18.35.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 18:35:09 -0700 (PDT)
Date: Sat, 8 Jun 2019 10:35:07 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V7 3/7] nvme: trace: put cid with le16_to_cpu()
Message-ID: <20190608013507.GC1276@minwooim-desktop>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-4-minwoo.im.dev@gmail.com>
 <20190607164723.GF7307@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607164723.GF7307@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_183512_190613_6D79106C 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-07 18:47:23, Christoph Hellwig wrote:
> On Fri, Jun 07, 2019 at 04:45:08AM +0900, Minwoo Im wrote:
> > The CID(Command Identifier) is in 16bits so that we need to convert it
> > to cpu's one.
> 
> The command identifier is 16-bits wide, but it is a field that the
> controller just passes through and never interprets.  Because of that
> it isn't marked as __le16 in nvme.h either.
> 
> > -		__entry->cid = cmd->common.command_id;
> > +		__entry->cid = le16_to_cpu(cmd->common.command_id);
> 
> This will actually create a sparse warning.

This is a horrible mistake that I made.  Sorry for making confusions.
Please ignore this patch in this series.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
