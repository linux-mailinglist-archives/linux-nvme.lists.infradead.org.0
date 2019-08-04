Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A00809E7
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rg9IE/rW1nYBEnKM8Mko6lIFsX5jEWM6znY6Vb1TvuI=; b=Z5IkQMSmWQodvM
	ewS6WhWahQZ0u9gcRwvA/3fnXe+vg4AuzHaqbiDt2ZmBNt05l7aSJKAdGUVqNe/P9kbxkpIJp8t/S
	h5HpioBM0LDdlzh1yrtJFktnoY3G1RHG+NqvbQvdltDA0hYFq/30/gxuRA4DNGDgD/IqKlPDa0QKq
	8pw7pNuX1KebTrEc82/IabtzfCJNlG3oFD+PJLzuil7P9tgFQWHvf1iWtKwg97VTBig+zH+9pwzfx
	pem+PwpXouZ30Cy04Pwe4PcDUMa24gdANXZcbwLL2EYDMBieujwBSzMPzd+OEAKGjp1pleFC7oEfS
	SvxQeXQhVG68AH7jacwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBPA-00051V-Gg; Sun, 04 Aug 2019 07:58:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBP0-00050c-2j
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:58:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so38132763pgi.6
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iQZhcKsuyV8JcTJOyx5G4wCNMYszfBfDbgcKZW8Qw7E=;
 b=iYSpcozIlU6wOPwmp06uNJOqHuITfOq5aWATqxhYI2kKEZW9AHX8AzGyLW7yK/uswu
 kV5NACEk1o/wCswpl2p3tVE+V+qYVVYurNLHyvUeDWLAKyei39gV9S4No6akgHdTambA
 d4IBcD25u+7WlUCI2EqOsF5nN4gK0IGRuKfIMDOtd+TB55mjKm8Xk1i0BpfNa0W/IOSU
 vhwNuv/dGpAXM8BHfrKvR3ZFe2stHJmAipft699Mcn3SG1eAB96ad5bWb4M9WCy+oWne
 fgDgv+ujJmeginTRcR5UtXl3hb0s5FGiPEj9NOM9t5iY32uJmtma1PsjVRnhSjRv8S3g
 Ua0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iQZhcKsuyV8JcTJOyx5G4wCNMYszfBfDbgcKZW8Qw7E=;
 b=Ehmy0FLQhEk66TlHHvQha75PomVaQXu5pLI6ff8ELf3KjRIptRV+ThCUJ90GQ+RhVo
 dZp46Ue1+qdCeXj7FrYHG0JASm5wkeChhNpepvv1CUS7VOF0LpU80/98ZsNJY7n2ZnxO
 96JnNCR5aWq0oCy2LNfxjcI5RpVJVLbbnDMtd+ws/IIxDcq+H53NwgURue/e7z3EtkIv
 u9+91wQxL6erdFKK+ng0VdaSqt9aT5FWkLeQR9PPYaRgrb6CGh1gMyIGbNh4xfYgX3Wy
 HQ3mSF8FuewkkbGq7j88Y400asf/j0AV7xFI6UFx5P/4yZMMhGys/HMADT06eAOpEZ+T
 sxLQ==
X-Gm-Message-State: APjAAAVPTmIUbXNtbtdJfzyE73e2T2ygnqOZuti5EWnclMPdbfMU4nix
 loaOdE4v1mWmFFZWbcQQQds=
X-Google-Smtp-Source: APXvYqw7YVWkIT3i17RLJXKqhLLi5FKNzOyoIYPiinvGRhRDjCaqHSFKR7XigTiakRhj9QRrNbJ0uQ==
X-Received: by 2002:a63:7358:: with SMTP id
 d24mr131228314pgn.224.1564905481500; 
 Sun, 04 Aug 2019 00:58:01 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f19sm116983974pfk.180.2019.08.04.00.58.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 00:58:00 -0700 (PDT)
Date: Sun, 4 Aug 2019 16:57:58 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 2/6] nvme: return nvme_error_status for sync
 commands failure
Message-ID: <20190804075758.GB14486@minwoo-desktop>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-3-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005802_119225_EB96D3EF 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Sagi,

On 19-08-02 19:49:51, Sagi Grimberg wrote:
> callers should not rely on raw nvme status, blk_status_t
> is more appropriate.

May I ask why caller should not rely on the nvme status?

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
