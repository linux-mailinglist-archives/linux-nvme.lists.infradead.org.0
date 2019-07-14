Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E9267E3A
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 10:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCd/m9HQkiLKEboeUOFwlAVItI5oLV+lRyjZQ2O0GjI=; b=DnLJh9UqC1K7eX
	1283Dncj4D0kCg8FOZDfrPX4Aa17UJq2UGac/4ewU3RwNxQOtHGXjHgXWIBh+W1xuejhKc2LMx04C
	3g86x1YePvxWIHRFl5YfsqrfSRtQ3EhjHoxjR9qi+Ra23LFs9jbhw8cTe+ig5j7NzHLx6lnJEOmjx
	2oJ3L9YkLF8TMHtcsaUaQlcXS+5Uzuq/Voq2dEldspx0SLGtiQL6hPGyhkZHRVTzDq5iJGTZmriaF
	T8n/i/Wwz4C3Q8M5ExfYUVPh7DKBG3oh0DtnF+T1JuUINQKsY4q7dSTRNCtJ0t/lfqJpYzAVkSD06
	F+Dodfvg+7BntLnqitdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmZRB-0000Wl-QX; Sun, 14 Jul 2019 08:00:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmZR7-0000WT-MD
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 08:00:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so6052571pfb.13
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 01:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yQhpZ5m2TAfpymIa9INYQdstPu0umbaEZF/uTq2krwA=;
 b=TyRovaBUSBtIW9e0WcCvFXUVBIYFrgqVwmPVtjBtTMBlQ4D2clc4Jex5QVcfNtyXr2
 tai+SEC6/kj883BKnV6YgSrn3mWxTx/6BYqxUXrx8Zi7ob6K+vqjFf+As0oI02jl8IQe
 1+0iyU48QrPS/X/pl/tdr29U3pnjAB8v0FuoFpkAX9jC0LRpeFz6CuvUaAtGTpgpJ5YZ
 MJVwYQrZntepSzdYuOZdbLv04Or66TKLFnVPeKzOWpeYZVEt00WQUvVwd5hQ7eCxNENz
 QpOG96Ac6pyIESHHL8lNkFWbyuxz9H1oQwvO9wvmkDQENd7vGuQ5iC9XTf2RSTSafJbU
 xP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yQhpZ5m2TAfpymIa9INYQdstPu0umbaEZF/uTq2krwA=;
 b=bbk3Qxr7ik8gVSy7QnotDxJ86NGS1vcc65EnpJUcOhvt8686nzrgorR4G9bqsSh4I2
 YuTs56zOQUON9O/vp7TXQWNnrdZXuocmike6ZVrOCJu+xKzkqJCBK5mIPVuwxHcuizY3
 l+6Bl0ENy2oJkUg9r0RZwVAbh4hz0wILmZaRXecwBTEVn+fg+LUUulBxOtCYPaeR+Ggu
 hTX86UkjJGaF4cN0j4zmCT/9f/NOfb5eMre5N8ErsFgn2IYdWY8nhqwt0DmtCL3g9dTM
 feNvSqOi3Tcf91nR6RHXD/A/z1XEkdYDBXbnHtZg/O/MBpQqrao36cfzcwLyAstSegHZ
 jTsQ==
X-Gm-Message-State: APjAAAVbKaPHXK6W9PgS/oIXBeaxoADpPoTkgLhmp+JNHIEeearArY9o
 KHDhYfWy+Z1UrDsZ80PUwvmwEgZur90=
X-Google-Smtp-Source: APXvYqwhvpzDv1ZpiCtf9Btm1uYAHtNAwYsJ3CBSyZLDiWkUZwMLLAS0JRzRwLrOjOgjDpfYzphOKA==
X-Received: by 2002:a65:690f:: with SMTP id s15mr16458940pgq.432.1563091242184; 
 Sun, 14 Jul 2019 01:00:42 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r6sm773666pgl.74.2019.07.14.01.00.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 01:00:41 -0700 (PDT)
Date: Sun, 14 Jul 2019 17:00:38 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Simon Schricker <sschricker@suse.de>
Subject: Re: [PATCH] nvme-vendor: fix c99 declarations in vendor plugins
Message-ID: <20190714080038.GA2993@minwoo-desktop>
References: <20190712153457.13877-1-sschricker@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712153457.13877-1-sschricker@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_010045_751533_E2A466B2 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: keith.busch@intel.com, Minwoo Im <minwoo.im@samsung.com>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hare@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
