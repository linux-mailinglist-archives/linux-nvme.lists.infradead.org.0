Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E973A15BA50
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 08:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIJKbOADBFBzcBXvmRf21UWxG8ZKdT9D6u/MGHAsmyg=; b=uHbXs7OiXHilsD
	3uD5ZqBrjIpYQ6Me5IDodcAwNMSemYQuKXMuk0/jJRdPvoF6Q8Ma9JcEyT/tCpVWkLhSvoyG7a5G9
	XqGTJGt4cbR9sPJ/tYh4KJuzKoq+5OnlYF4MiyOibTvUdduvb8pm8WZ4E4PVw9QZuP4fY+08quuw2
	Gx80Y7OWVL/6JwaPvUDpRUJxfdtgSD0Q7wiVMaudSvnIVEPBwPm42ANbE0ryhpxyi0hcPVhFy3opN
	g3nDGE3zHyP9Em4jBGqxFCzqyT3F65PkXr+JL9BTHG9l8Z9HXD6E7f7sn/Q5DL3oqZstkGig+aJkb
	uDUZQxvnd4MPSsMhOKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29K7-00079h-Ck; Thu, 13 Feb 2020 07:54:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29K0-00078s-GA
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 07:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581580442;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DhtNmiDUJW+7rS6fmiAxhTic8+FFuDLHqobM66ey41E=;
 b=XzYHmt85CLGjb4zvKXvGWh1VaWIc3/lUyRe50NnHKFeTGMgQVYvfO4DHocgaJSpL/ngf94
 EEC3CYTZB/Be5yQEkgKC7AtGNWtHIDOT3wYOXl8Cn5bdzKfb+F6YbPtU/mWaMlVWvSOhKB
 /PcG473M9HQlH2qsGESK3SMFnvftrIg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-djjvqUcvMreLcUHNiznM5A-1; Thu, 13 Feb 2020 02:53:59 -0500
X-MC-Unique: djjvqUcvMreLcUHNiznM5A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0DD2101FC66;
 Thu, 13 Feb 2020 07:53:58 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DA425DA7B;
 Thu, 13 Feb 2020 07:53:52 +0000 (UTC)
Date: Thu, 13 Feb 2020 15:53:48 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200213075348.GA9144@ming.t460p>
References: <CANo=J14resJ4U1nufoiDq+ULd0k-orRCsYah8Dve-y8uCjA62Q@mail.gmail.com>
 <20200211122821.GA29811@ming.t460p>
 <CANo=J14iRK8K3bc1g3rLBp=QTLZQak0DcHkvgZS2f=xO_HFgxQ@mail.gmail.com>
 <BYAPR04MB5816AA843E63FFE2EA1D5D23E71B0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200212220328.GB25314@ming.t460p>
 <BYAPR04MB581622DDD1B8B56CEFF3C23AE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB581622DDD1B8B56CEFF3C23AE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_235404_620773_FB4C3DEC 
X-CRM114-Status: GOOD (  29.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Tim Walker <tim.t.walker@seagate.com>, linux-scsi <linux-scsi@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMDI6NDA6NDFBTSArMDAwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gTWluZywKPiAKPiBPbiAyMDIwLzAyLzEzIDc6MDMsIE1pbmcgTGVpIHdyb3RlOgo+
ID4gT24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMDE6NDc6NTNBTSArMDAwMCwgRGFtaWVuIExlIE1v
YWwgd3JvdGU6Cj4gPj4gT24gMjAyMC8wMi8xMiA0OjAxLCBUaW0gV2Fsa2VyIHdyb3RlOgo+ID4+
PiBPbiBUdWUsIEZlYiAxMSwgMjAyMCBhdCA3OjI4IEFNIE1pbmcgTGVpIDxtaW5nLmxlaUByZWRo
YXQuY29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiBPbiBNb24sIEZlYiAxMCwgMjAyMCBhdCAwMjoy
MDoxMFBNIC0wNTAwLCBUaW0gV2Fsa2VyIHdyb3RlOgo+ID4+Pj4+IEJhY2tncm91bmQ6Cj4gPj4+
Pj4KPiA+Pj4+PiBOVk1lIHNwZWNpZmljYXRpb24gaGFzIGhhcmRlbmVkIG92ZXIgdGhlIGRlY2Fk
ZSBhbmQgbm93IE5WTWUgZGV2aWNlcwo+ID4+Pj4+IGFyZSB3ZWxsIGludGVncmF0ZWQgaW50byBv
dXIgY3VzdG9tZXJz4oCZIHN5c3RlbXMuIEFzIHdlIGxvb2sgZm9yd2FyZCwKPiA+Pj4+PiBtb3Zp
bmcgSEREcyB0byB0aGUgTlZNZSBjb21tYW5kIHNldCBlbGltaW5hdGVzIHRoZSBTQVMgSU9DIGFu
ZCBkcml2ZXIKPiA+Pj4+PiBzdGFjaywgY29uc29saWRhdGluZyBvbiBhIHNpbmdsZSBhY2Nlc3Mg
bWV0aG9kIGZvciByb3RhdGlvbmFsIGFuZAo+ID4+Pj4+IHN0YXRpYyBzdG9yYWdlIHRlY2hub2xv
Z2llcy4gUENJZS1OVk1lIG9mZmVycyBuZWFyLVNBVEEgaW50ZXJmYWNlCj4gPj4+Pj4gY29zdHMs
IGZlYXR1cmVzIGFuZCBwZXJmb3JtYW5jZSBzdWl0YWJsZSBmb3IgaGlnaC1jYXAgSEREcywgYW5k
Cj4gPj4+Pj4gb3B0aW1hbCBpbnRlcm9wZXJhYmlsaXR5IGZvciBzdG9yYWdlIGF1dG9tYXRpb24s
IHRpZXJpbmcsIGFuZAo+ID4+Pj4+IG1hbmFnZW1lbnQuIFdlIHdpbGwgc2hhcmUgc29tZSBlYXJs
eSBjb25jZXB0dWFsIHJlc3VsdHMgYW5kIHByb3Bvc2VkCj4gPj4+Pj4gc2FsaWVudCBkZXNpZ24g
Z29hbHMgYW5kIGNoYWxsZW5nZXMgc3Vycm91bmRpbmcgYW4gTlZNZSBIREQuCj4gPj4+Pgo+ID4+
Pj4gSERELiBwZXJmb3JtYW5jZSBpcyB2ZXJ5IHNlbnNpdGl2ZSB0byBJTyBvcmRlci4gQ291bGQg
eW91IHByb3ZpZGUgc29tZQo+ID4+Pj4gYmFja2dyb3VuZCBpbmZvIGFib3V0IE5WTWUgSEREPyBT
dWNoIGFzOgo+ID4+Pj4KPiA+Pj4+IC0gbnVtYmVyIG9mIGh3IHF1ZXVlcwo+ID4+Pj4gLSBodyBx
dWV1ZSBkZXB0aAo+ID4+Pj4gLSB3aWxsIE5WTWUgc29ydC9tZXJnZSBJTyBhbW9uZyBhbGwgU1Fz
IG9yIG5vdD8KPiA+Pj4+Cj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IERpc2N1c3Npb24gUHJvcG9z
YWw6Cj4gPj4+Pj4KPiA+Pj4+PiBXZeKAmWQgbGlrZSB0byBzaGFyZSBvdXIgdmlld3MgYW5kIHNv
bGljaXQgaW5wdXQgb246Cj4gPj4+Pj4KPiA+Pj4+PiAtV2hhdCBMaW51eCBzdG9yYWdlIHN0YWNr
IGFzc3VtcHRpb25zIGRvIHdlIG5lZWQgdG8gYmUgYXdhcmUgb2YgYXMgd2UKPiA+Pj4+PiBkZXZl
bG9wIHRoZXNlIGRldmljZXMgd2l0aCBkcmFzdGljYWxseSBkaWZmZXJlbnQgcGVyZm9ybWFuY2UK
PiA+Pj4+PiBjaGFyYWN0ZXJpc3RpY3MgdGhhbiB0cmFkaXRpb25hbCBOQU5EPyBGb3IgZXhhbXBs
ZSwgd2hhdCBzY2hlZHVsYXIgb3IKPiA+Pj4+PiBkZXZpY2UgZHJpdmVyIGxldmVsIGNoYW5nZXMg
d2lsbCBiZSBuZWVkZWQgdG8gaW50ZWdyYXRlIE5WTWUgSEREcz8KPiA+Pj4+Cj4gPj4+PiBJTyBt
ZXJnZSBpcyBvZnRlbiBpbXBvcnRhbnQgZm9yIEhERC4gSU8gbWVyZ2UgaXMgdXN1YWxseSB0cmln
Z2VyZWQgd2hlbgo+ID4+Pj4gLnF1ZXVlX3JxKCkgcmV0dXJucyBTVFNfUkVTT1VSQ0UsIHNvIGZh
ciB0aGlzIGNvbmRpdGlvbiB3b24ndCBiZQo+ID4+Pj4gdHJpZ2dlcmVkIGZvciBOVk1lIFNTRC4K
PiA+Pj4+Cj4gPj4+PiBBbHNvIGJsay1tcSBraWxscyBCREkgcXVldWUgY29uZ2VzdGlvbiBhbmQg
aW9jIGJhdGNoaW5nLCBhbmQgY2F1c2VzCj4gPj4+PiB3cml0ZWJhY2sgcGVyZm9ybWFuY2UgcmVn
cmVzc2lvblsxXVsyXS4KPiA+Pj4+Cj4gPj4+PiBXaGF0IEkgYW0gdGhpbmtpbmcgaXMgdGhhdCBp
ZiB3ZSBuZWVkIHRvIHN3aXRjaCB0byB1c2UgaW5kZXBlbmRlbnQgSU8KPiA+Pj4+IHBhdGggZm9y
IGhhbmRsaW5nIFNTRCBhbmQgSERELiBJTywgZ2l2ZW4gdGhlIHR3byBtZWRpdW1zIGFyZSBzbwo+
ID4+Pj4gZGlmZmVyZW50IGZyb20gcGVyZm9ybWFuY2Ugdmlld3BvaW50Lgo+ID4+Pj4KPiA+Pj4+
IFsxXSBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9aHR0cHMtM0Ff
X2xvcmUua2VybmVsLm9yZ19saW51eC0yRHNjc2lfUGluZS5MTlguNC40NEwwLjE5MDkxODEyMTMx
NDEuMTUwNy0yRDEwMDAwMC00MGlvbGFudGhlLnJvd2xhbmQub3JnXyZkPUR3SUZhUSZjPUlHRGxn
MGxEMGItbmVibUpKMEtwOEEmcj1OVzFYMHlSSE5ORWx1WjhzT0dYQnhDYlFKWlBXY0lrUFQwVXkz
eW5Wc0ZVJm09cFNuSHB0X3VRUTczSlY0VklRZzFDX1BWQWNMdnFCQnRteXhRSHdXakdTTSZzPXRz
bkZQOGJRSUFxN0c2NkI3NUxUZTN2bzRLMTRIYkw5SkpLc3hsX0xQQXcmZT0KPiA+Pj4+IFsyXSBo
dHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9aHR0cHMtM0FfX2xvcmUu
a2VybmVsLm9yZ19saW51eC0yRHNjc2lfMjAxOTEyMjYwODM3MDYuR0ExNzk3NC00MG1pbmcudDQ2
MHBfJmQ9RHdJRmFRJmM9SUdEbGcwbEQwYi1uZWJtSkowS3A4QSZyPU5XMVgweVJITk5FbHVaOHNP
R1hCeENiUUpaUFdjSWtQVDBVeTN5blZzRlUmbT1wU25IcHRfdVFRNzNKVjRWSVFnMUNfUFZBY0x2
cUJCdG15eFFId1dqR1NNJnM9R0p3U3hYdGNfcVpIS25yVHFTYnl0VWp1UnJyUWdacHZWM2J4WllG
REhlNCZlPQo+ID4+Pj4KPiA+Pj4+Cj4gPj4+PiBUaGFua3MsCj4gPj4+PiBNaW5nCj4gPj4+Pgo+
ID4+Pgo+ID4+PiBJIHdvdWxkIGV4cGVjdCB0aGUgZHJpdmUgd291bGQgc3VwcG9ydCBhIHJlYXNv
bmFibGUgbnVtYmVyIG9mIHF1ZXVlcwo+ID4+PiBhbmQgYSByZWxhdGl2ZWx5IGRlZXAgcXVldWUg
ZGVwdGgsIG1vcmUgaW4gbGluZSB3aXRoIE5WTWUgcHJhY3RpY2VzCj4gPj4+IHRoYW4gU0FTIEhE
RCdzIHR5cGljYWwgMTI4LiBCdXQgaXQgcHJvYmFibHkgZG9lc24ndCBtYWtlIHNlbnNlIHRvCj4g
Pj4+IHF1ZXVlIHVwIHRob3VzYW5kcyBvZiBjb21tYW5kcyBvbiBzb21ldGhpbmcgYXMgc2xvdyBh
cyBhbiBIREQsIGFuZAo+ID4+PiBtYW55IGN1c3RvbWVycyBrZWVwIHF1ZXVlcyA8IDMyIGZvciBs
YXRlbmN5IG1hbmFnZW1lbnQuCj4gPj4KPiA+PiBFeHBvc2luZyBhbiBIREQgdGhyb3VnaCBtdWx0
aXBsZS1xdWV1ZXMgZWFjaCB3aXRoIGEgaGlnaCBxdWV1ZSBkZXB0aCBpcwo+ID4+IHNpbXBseSBh
c2tpbmcgZm9yIHRyb3VibGVzLiBDb21tYW5kcyB3aWxsIGVuZCB1cCBzcGVuZGluZyBzbyBtdWNo
IHRpbWUKPiA+PiBzaXR0aW5nIGluIHRoZSBxdWV1ZXMgdGhhdCB0aGV5IHdpbGwgdGltZW91dC4g
VGhpcyBjYW4gYWxyZWFkeSBiZSBvYnNlcnZlZAo+ID4+IHdpdGggdGhlIHNtYXJ0cHFpIFNBUyBI
QkEgd2hpY2ggZXhwb3NlcyBzaW5nbGUgZHJpdmVzIGFzIG11bHRpcXVldWUgYmxvY2sKPiA+PiBk
ZXZpY2VzIHdpdGggaGlnaCBxdWV1ZSBkZXB0aC4gRXhlcmNpc2luZyB0aGVzZSBkcml2ZXMgaGVh
dmlseSBsZWFkcyB0bwo+ID4+IHRob3VzYW5kcyBvZiBjb21tYW5kcyBiZWluZyBxdWV1ZWQgYW5k
IHRvIHRpbWVvdXRzLiBJdCBpcyBmYWlybHkgZWFzeSB0bwo+ID4+IHRyaWdnZXIgdGhpcyB3aXRo
b3V0IGEgbWFudWFsIGNoYW5nZSB0byB0aGUgUUQuIFRoaXMgaXMgb24gbXkgdG8tZG8gbGlzdCBv
Zgo+ID4+IGZpeGVzIGZvciBzb21lIHRpbWUgbm93IChsYWNraW5nIHRpbWUgdG8gZG8gaXQpLgo+
ID4gCj4gPiBKdXN0IHdvbmRlcmluZyB3aHkgc21hcnRwcWkgU0FTIHdvbid0IHNldCBvbmUgcHJv
cGVyIC5jbWRfcGVyX2x1biBmb3IKPiA+IGF2b2lkaW5nIHRoZSBpc3N1ZSwgbG9va3MgdGhlIGRy
aXZlciBzaW1wbHkgYXNzaWducyAuY2FuX3F1ZXVlIHRvIGl0LAo+ID4gdGhlbiBpdCBpc24ndCBz
dHJhbmdlIHRvIHNlZSB0aGUgdGltZW91dCBpc3N1ZS4gSWYgLmNhbl9xdWV1ZSBpcyBhIGJpdAo+
ID4gYmlnLCBIREQuIGlzIGVhc2lseSBzYXR1cmF0ZWQgdG9vIGxvbmcuCj4gPiAKPiA+Pgo+ID4+
IE5WTWUgSEREcyBuZWVkIHRvIGhhdmUgYW4gaW50ZXJmYWNlIHNldHVwIHRoYXQgbWF0Y2ggdGhl
aXIgc3BlZWQsIHRoYXQgaXMsCj4gPj4gc29tZXRoaW5nIGxpa2UgYSBTQVMgaW50ZXJmYWNlOiAq
c2luZ2xlKiBxdWV1ZSBwYWlyIHdpdGggYSBtYXggUUQgb2YgMjU2IG9yCj4gPj4gbGVzcyBkZXBl
bmRpbmcgb24gd2hhdCB0aGUgZHJpdmUgY2FuIHRha2UuIFRoZWlyIGlzIG5vIFRBU0tfU0VUX0ZV
TEwKPiA+PiBub3RpZmljYXRpb24gb24gTlZNZSwgc28gdGhyb3R0bGluZyBoYXMgdG8gY29tZSBm
cm9tIHRoZSBtYXggUUQgb2YgdGhlIFNRLAo+ID4+IHdoaWNoIHRoZSBkcml2ZSB3aWxsIGFkdmVy
dGlzZSB0byB0aGUgaG9zdC4KPiA+Pgo+ID4+PiBNZXJnZSBhbmQgZWxldmF0b3IgYXJlIGltcG9y
dGFudCB0byBIREQgcGVyZm9ybWFuY2UuIEkgZG9uJ3QgYmVsaWV2ZQo+ID4+PiBOVk1lIHNob3Vs
ZCBhdHRlbXB0IHRvIG1lcmdlL3NvcnQgYWNyb3NzIFNRcy4gQ2FuIE5WTWUgbWVyZ2Uvc29ydAo+
ID4+PiB3aXRoaW4gYSBTUSB3aXRob3V0IGRyaXZpbmcgbGFyZ2UgZGlmZmVyZW5jZXMgYmV0d2Vl
biBTU0QgJiBIREQgZGF0YQo+ID4+PiBwYXRocz8KPiA+Pgo+ID4+IEFzIGZhciBhcyBJIGtub3cs
IHRoZXJlIGlzIG5vIG1lcmdpbmcgZ29pbmcgb24gb25jZSByZXF1ZXN0cyBhcmUgcGFzc2VkIHRv
Cj4gPj4gdGhlIGRyaXZlciBhbmQgYWRkZWQgdG8gYW4gU1EuIFNvIHRoaXMgaXMgYmVzaWRlIHRo
ZSBwb2ludC4KPiA+PiBUaGUgY3VycmVudCBkZWZhdWx0IGJsb2NrIHNjaGVkdWxlciBmb3IgTlZN
ZSBTU0RzIGlzICJub25lIi4gVGhpcyBpcwo+ID4+IGRlY2lkZWQgYmFzZWQgb24gdGhlIG51bWJl
ciBvZiBxdWV1ZXMgb2YgdGhlIGRldmljZS4gRm9yIE5WTWUgZHJpdmVzIHRoYXQKPiA+PiBoYXZl
IG9ubHkgYSBzaW5nbGUgcXVldWUgKkFORCogdGhlIFFVRVVFX0ZMQUdfTk9OUk9UIGZsYWcgY2xl
YXJlZCBpbiB0aGVpcgo+ID4+IHJlcXVlc3QgcXVldWUgd2lsbCBjYW4gZmFsbGJhY2sgdG8gdGhl
IGRlZmF1bHQgc3Bpbm5pbmcgcnVzdCBtcS1kZWFkbGluZQo+ID4+IGVsZXZhdG9yLiBUaGF0IHdp
bGwgYWNoaWV2ZSBjb21tYW5kIG1lcmdpbmcgYW5kIExCQSBvcmRlcmluZyBuZWVkZWQgZm9yCj4g
Pj4gZ29vZCBwZXJmb3JtYW5jZSBvbiBIRERzLgo+ID4gCj4gPiBtcS1kZWFkbGluZSBiYXNpY2Fs
bHkgd29uJ3QgbWVyZ2UgSU8gaWYgU1RTX1JFU09VUkNFIGlzbid0IHJldHVybmVkIGZyb20KPiA+
IC5xdWV1ZV9ycSgpLCBvciBibGtfbXFfZ2V0X2Rpc3BhdGNoX2J1ZGdldCBhbHdheXMgcmV0dXJu
IHRydWUuIE5WTWUncwo+ID4gLnF1ZXVlX3JxKCkgYmFzaWNhbGx5IGFsd2F5cyByZXR1cm5zIFNU
U19PSy4KPiAKPiBJIGFtIGNvbmZ1c2VkOiB3aGVuIGFuIGVsZXZhdG9yIGlzIHNldCwgLT5xdWV1
ZV9ycSgpIGlzIGNhbGxlZCBmb3IgcmVxdWVzdHMKPiBvYnRhaW5lZCBmcm9tIHRoZSBlbGV2YXRv
ciAod2l0aCBlLT50eXBlLT5vcHMuZGlzcGF0Y2hfcmVxdWVzdCgpKSwgYWZ0ZXIKPiB0aGUgcmVx
dWVzdHMgd2VudCB0aHJvdWdoIGl0LiBBbmQgbWVyZ2luZyB3aWxsIGhhcHBlbiBhdCB0aGF0IHN0
YWdlIHdoZW4KPiBuZXcgcmVxdWVzdHMgYXJlIGluc2VydGVkIGluIHRoZSBlbGV2YXRvci4KCldo
ZW4gcmVxdWVzdCBpcyBxdWV1ZWQgdG8gbGxkIHZpYSAucXVldWVfcnEoKSwgdGhlIHJlcXVlc3Qg
aGFzIGJlZW4KcmVtb3ZlZCBmcm9tIHNjaGVkdWxlciBxdWV1ZS4gQW5kIElPIG1lcmdlIGlzIGp1
c3QgZG9uZSBpbnNpZGUgb3IKYWdhaW5zdCBzY2hlZHVsZXIgcXVldWUuCgo+IAo+IElmIHRoZSAt
PnF1ZXVlX3JxKCkgcmV0dXJucyBCTEtfU1RTX1JFU09VUkNFIG9yIEJMS19TVFNfREVWX1JFU09V
UkNFLCB0aGUKPiByZXF1ZXN0IGlzIGluZGVlZCByZXF1ZXVlZCB3aGljaCBvZmZlciBtb3JlIGNo
YW5jZXMgb2YgZnVydGhlciBtZXJnaW5nLCBidXQKPiB0aGF0IGlzIG5vdCB0aGUgc2FtZSBhcyBu
byBtZXJnaW5nIGhhcHBlbmluZy4KPiBBbSBJIG1pc3NpbmcgeW91ciBwb2ludCBoZXJlID8KCkJM
S19TVFNfUkVTT1VSQ0Ugb3IgQkxLX1NUU19ERVZfUkVTT1VSQ0Ugb3IgZ2V0dGluZyBubyBidWRn
ZXQgY2FuIGJlCnRob3VnaHQgYXMgZGV2aWNlIHNhdHVyYXRpb24gZmVlZGJhY2ssIHRoZW4gbW9y
ZSByZXF1ZXN0cyBjYW4gYmUKZ2F0aGVyZWQgaW4gc2NoZWR1bGVyIHF1ZXVlIHNpbmNlIHdlIGRv
bid0IGRlcXVldWUgcmVxdWVzdCBmcm9tCnNjaGVkdWxlciBxdWV1ZSB3aGVuIHRoYXQgaGFwcGVu
cywgdGhlbiBJTyBtZXJnZSBpcyBwb3NzaWJsZS4KCldpdGhvdXQgYW55IGRldmljZSBzYXR1cmF0
aW9uIGZlZWRiYWNrIGZyb20gZHJpdmVyLCBibG9jayBsYXllciBqdXN0CmRlcXVldWVzIHJlcXVl
c3QgZnJvbSBzY2hlZHVsZXIgcXVldWUgd2l0aCBzYW1lIHNwZWVkIG9mIHN1Ym1pc3Npb24gdG8K
aGFyZHdhcmUsIHRoZW4gbm8gSU8gY2FuIGJlIG1lcmdlZC4KCklmIHlvdSBvYnNlcnZlIHNlcXVl
bnRpYWwgSU8gb24gTlZNZSBQQ0ksIHlvdSB3aWxsIHNlZSBubyBJTyBtZXJnZQpiYXNpY2FsbHku
CgogClRoYW5rcywKTWluZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
