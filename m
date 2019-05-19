Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5CD22817
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 19:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FEgUtURCbjL201twFQzsATnxtgwo7l3JuCNy2FsIuI=; b=OHMEErOe8IrZIr
	CbEWvJOjMF+Mk61hjlcm8vKaxG5+/WhLvYCMD5F+kJn+xoaG4OvWLqqs3cOt5flsq7qqU5Zi7OPNP
	OXgdURRIdwQtzjaOLBJZ8Fae5+G+Ez/x5d7mdmM5IqGfhsYCrO2QvRqt8+JMtT3QSBtxK3zJFPiRt
	eicsIzdcaDFt0Em71Qt3Ag7gu3CPffmLrkf6dGDBoHao9G08vgZxBdhm1oDB73dTRy/5AqKBDl+0h
	p0hMtxElEo3RAUfL9Wy5j3Z87W/4QfIz6nt0DaMrkEUXuqsE+DVGim67cg/suaz4t4UMcPo3tFMTm
	aEH2NdPC3WBwvZBMOoNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSPzz-0004JP-Qr; Sun, 19 May 2019 17:53:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSPzu-0004J0-FZ
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 17:53:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id gn7so1456990plb.10
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 10:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bT8Yzt8foiCq6Ar1IRr7vsismGywHrqUC2e3lXUySsM=;
 b=F7uSvpHXDlYdchmbyaFSFunSZ6VG8JnfcoifRJ/gr1h/MZnGLQgQxzmldms3n1AFky
 eFwcP0gBqo40xGcy92nomUsM4gonVX9Xw/13OL1CaLQ2BmQ9oUspM1cMjU9Nz7ozeGwt
 6KPa1xZk1kgotMXm6+tRXzZl3Xn6xZPaNxHxbtyIn0B6QHaf4SWK2t2VyKb/t33FaMY5
 EdNY6OhDxl5wX4VL7dCgdfQ5E1f4oQ3pZQwYDFkBSqR6hOw9rdeYf1c4FRsviqLeWYzJ
 X003VVC6x9bkhJKvkMh3+vZnDCd7y73f1bm9OW/k3b+i+PgFyt9gLhY+Mq2W7Yjt7529
 GerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bT8Yzt8foiCq6Ar1IRr7vsismGywHrqUC2e3lXUySsM=;
 b=pD8icvGQkrF7mzHc5mB/a14Otpx2h0imDnUWv+i2/Q1U/WgkZYtrPWBzGh5Bu9aYYY
 TRRzJLz3uNvf47uXd97pSynVy+zga7s9S1WHn9o8gOqvB597ZZWbZrH7uU0VoqbNROcN
 /pklNAKnsZnPdPtiuhXM4qH3MYpzJQUSHK1LymnkvafD0WV6mYCfVIk+LkpxP+Zb8HFy
 w9OQETCpY4IZ/pdS594SnzYfrzHKZ94Zt3v+O5eJDRsd5QUBsMtR+hUFv5/Mp/LvESzc
 FYgzB8REPmYY2hX2Fldq8LBP8xPRD2JgM33Buc8AbAuTePToFuLLmPMjoXRsBXTGsXZt
 O+yQ==
X-Gm-Message-State: APjAAAUhr0g3WmNmI0jZvvtP0QefuPuarEiM56Ooz2Rq3QIkMzI9oJ8T
 gha50Lxtl1bnGhqxnGae/ospRAT9yKw=
X-Google-Smtp-Source: APXvYqyeiIVMjjXfFmwQZkjDRR0cdJw3p7zBpPO6bLWJ5brTe/lFMu4itquNKUeJs+cooGJphCUZIQ==
X-Received: by 2002:a17:902:b615:: with SMTP id
 b21mr8033432pls.12.1558288401226; 
 Sun, 19 May 2019 10:53:21 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i129sm18871643pfc.163.2019.05.19.10.53.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 May 2019 10:53:20 -0700 (PDT)
Date: Mon, 20 May 2019 02:53:16 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH V2 3/4] nvme: Return errno mapped for nvme error status
Message-ID: <20190519175315.GA10876@minwooim-desktop>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
 <20190513170342.9497-4-minwoo.im.dev@gmail.com>
 <BYAPR04MB574936E1FDF464243691513286050@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB574936E1FDF464243691513286050@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_105322_523070_F30A6EF6 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > @@ -364,6 +367,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
> >   		perror("get-telemetry-log");
> >   	else if (err > 0) {
> >   		show_nvme_status(err);
> > +		err = nvme_status_to_errno(err, false);
> >   		fprintf(stderr, "Failed to acquire telemetry header %d!\n", err);
> 
> Following line to nvme_status_to_errno() call above assumes that err has 
> a return value from nvme_get_telemetry_log() and we are overwriting it.
> 
> We need to avoid such scenarios going forward. Also, since each command 

Can you please explain why we need to avoid such overwriting scenario?

> assumes that err holds the NVMe status. Instead of having to call 
> nvme_status_errno() along with nvme_show_status() we should call 
> nvme_status_to_errno(err) at the end of the function in the return 
> statement. This approach will not break the assumption that code is 
> having now and less lines of code changes, obviously 
> nvme_status_to_errno() will need some modifications but that
> is fine, untested patch following  :-

Makes sense.  If we are going to convert the positive nvme status and
negative linux internal errno status to an errno inside of
nvme_st4atus_to_errno(), it will much more simpler for this patch.

Anyway, I will prepare V3 patch by updating the conversion at the end of
the each subcommandh handlers.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
