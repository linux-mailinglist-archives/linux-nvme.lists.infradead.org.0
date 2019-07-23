Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3684A71967
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 15:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmKgkI0RIPbDejiaIIgdrsh9N//qWXzdBSLtXARoXJk=; b=skgoXhZf5rb6dS
	pJ6uGRX8tQftDhwMYjyOCDw/QM006MBE3iiijZDhARz4QpW5fmb5nB24c8nmXiK+YLxbUWDHmWwI4
	PHibI8gVXH3bbF7L7ptLU7NIauWo2L6momJwC4FURySdcibmS5vZt7oSuBC1KmBGQBIb27aKVa1Jw
	qQ8SwgvzEmou9q9i5k1CBVGVBLLqhty5K+Wl9uifDNhQ5wz2RNfPpqdQjEmNjt2qHwmB75jqvlB4O
	9v+fRem94wxomPzPgdS24kA+UHL9St6i+hGWECCnPHOHss4D5uBrviWVr2Sg8/SqEuc+sE7tL5BVF
	Yjes2+WFC/b55kg2TRCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuy6-0003xw-7Q; Tue, 23 Jul 2019 13:36:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuxp-0003vA-Vw
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 13:36:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so19159934pff.9
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 06:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qFMKDaJZ4HFs3EQ1OpGtUmr/3RWLd6DN2VnklKoJ7uI=;
 b=dGZBPuG/5vJGPIM3B0gUhN4YsISS6RaddObl8r7gH4QDebsVRQJpbintYkLMH50f69
 zby7oZpQ8R+A02WX9kKDvJ/U9Nt9c1+DwoBWr+OIyXs/72pRR/bl+vhsn7wtqkYy3B0J
 Ds8syO7iQTyagfZNeO0vb+gI7q2fNADqNbM9kIU/5xWtIywxwvhmpjOWOj5ewd8QOEkI
 tYSmDfjAbjFYMXf+gUg20RrNtxK+EmN3AdA/PJQsvVpsbYcGTTKbohN+5mKhxeJW5nGf
 QlZ2rYuBlbDmx0jxmbnynh3+4tDhbEkCFjcSPQV/WmixQDN0PG2aAcRX9oi23hdzLWUK
 uXhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qFMKDaJZ4HFs3EQ1OpGtUmr/3RWLd6DN2VnklKoJ7uI=;
 b=pfkvE6tp7lw/OcjTXtVIBBhD6H+IPP8Gu9hF4fAwCDVvebUp2EJ2IPuZxJ5ss7A78O
 e5eYVoICMY06MSz05GhJ7AfTkOuO++P2k9YrCoHmaO3Qy8oB5W4L78s+wl5bPfdccR3i
 WfNmhLtzxb3p+Tj/9O0+iLJ2WY9w2jfs83nZdL7npFnLjkOK/NRNRYGEsayszHkI6ba/
 qVsPKOt97jmH/2va7fuj7gWOsEsRLsbrKeNIerpggnD7i4jnOvhuCohuvX5hXhxwPNCk
 fCrfGQv94m9h7J2Cekfj3G6JqxVi5xC29oVEOtrfUA9L03uNqToBD+6ZPJZylU007tn3
 152Q==
X-Gm-Message-State: APjAAAUao21/aLzLcXxzSZGv863fLg8Y9UPfoX7f+h5UWgXvzcapUAjW
 pO0mnHB804Btj6eirN55rGw=
X-Google-Smtp-Source: APXvYqxgpnbjXiXJvUFSKhkARjgX6lkiXU/77LlANQ37gONbXBBhKbwJrmu88roT+OZnkmXxYbI3Iw==
X-Received: by 2002:a63:774c:: with SMTP id s73mr76660994pgc.238.1563888980184; 
 Tue, 23 Jul 2019 06:36:20 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t7sm36089869pfh.101.2019.07.23.06.36.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 06:36:19 -0700 (PDT)
Date: Tue, 23 Jul 2019 22:36:17 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 07/10] nvme-cli: Add routine to search for controller
 with specific attributes
Message-ID: <20190723133617.GC7148@minwoo-desktop>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-8-jsmart2021@gmail.com>
 <20190720082504.GG22395@minwoo-desktop>
 <f020727d-28c9-ff5b-3caa-f4258284bdec@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f020727d-28c9-ff5b-3caa-f4258284bdec@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063622_059942_4F2F149C 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Smart <jsmart2021@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-22 15:41:08, Sagi Grimberg wrote:
> 
> > James,
> > 
> > It might be too late to discuss about this argument, but did you decided
> > to have (struct connect_args) as a parameter for this function?
> > 
> > Sorry for not giving any thoughts on the following mail[1], but I would
> > prefer not introducing a new data structure for this because it's just a
> > bypass argument from a perspective of find_ctrl_with_connetargs().  But
> > If you think it's okay to go with, then I'm fine with that too.
> 
> I think its just fine with the connect_args. This can also extend to
> other search/match functionality we may need in the future (that is
> insensitive to short/long args).

Agreed.  I think it's good to go with what James just got sent.

Thanks for the clarification, Sagi!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
